#!/usr/bin/env bash
set -euo pipefail

# Sync discussion categories:
# - top-level folders (excluding technical folders)
# - H1 titles from index/fr_FR/index.md (only lines starting with "# ")
#
# Creates categories with a description and an emoji (🔌).
#
# Requirements: gh (authenticated) and jq

OWNER=${OWNER:-}
REPO=${REPO:-}

if [ -z "$OWNER" ] || [ -z "$REPO" ]; then
  echo "OWNER and REPO environment variables must be set."
  exit 1
fi

# Excluded top-level folders
EXCLUDE_REGEX='^(index|_layouts|\.vscode|assets|\.github)$'

# 1) collect top-level directories (excluding hidden and excluded)
mapfile -t dirs < <(for d in */ ; do
  d=${d%/}
  # skip hidden and excluded
  if [[ "$d" =~ ^\. ]]; then
    continue
  fi
  if [[ "$d" =~ $EXCLUDE_REGEX ]]; then
    continue
  fi
  if [ -d "$d" ]; then
    echo "$d"
  fi
done || true)

# 2) collect H1 titles from index/fr_FR/index.md (lines starting with "# ")
mdfile="index/fr_FR/index.md"
titles=()
if [ -f "$mdfile" ]; then
  while IFS= read -r line; do
    if [[ "$line" =~ ^#\ (.*) ]]; then
      title="${BASH_REMATCH[1]}"
      # trim
      title="$(echo -e "${title}" | sed -E 's/^[[:space:]]+//;s/[[:space:]]+$//')"
      [ -n "$title" ] && titles+=("$title")
    fi
  done < "$mdfile"
fi

# 3) merge and deduplicate (preserve order)
declare -A seen
desired=()
for item in "${dirs[@]}" "${titles[@]}"; do
  key="$(echo "$item" | tr -s ' ' ' ')" # normalize spaces
  if [ -z "$key" ]; then continue; fi
  if [ -z "${seen[$key]:-}" ]; then
    seen[$key]=1
    desired+=("$key")
  fi
done

if [ "${#desired[@]}" -eq 0 ]; then
  echo "No plugin names found to sync. Exiting."
  exit 0
fi

echo "Desired categories to ensure exist:"
for n in "${desired[@]}"; do echo " - $n"; done

# 4) fetch existing discussion categories via REST API
echo "Fetching existing discussion categories..."
existing_json=$(gh api -H "Accept: application/vnd.github.v3+json" "/repos/${OWNER}/${REPO}/discussion-categories" || echo "[]")
existing_names=$(echo "$existing_json" | jq -r '.[].name' || true)

declare -A exists_map
while IFS= read -r line; do
  [ -n "$line" ] && exists_map["$line"]=1
done <<< "$existing_names"

# 5) create missing categories (with description and emoji)
created=0
for name in "${desired[@]}"; do
  if [ -n "${exists_map[$name]:-}" ]; then
    echo "Category exists: $name"
    continue
  fi

  echo "Creating category: $name"
  desc="Support pour le plugin ${name}"
  emoji="🔌"

  resp=$(gh api \
    --method POST \
    -H "Accept: application/vnd.github.v3+json" \
    "/repos/${OWNER}/${REPO}/discussion-categories" \
    -f name="$name" \
    -f description="$desc" \
    -f emoji="$emoji" || true)

  if echo "$resp" | jq -e '.id' >/dev/null 2>&1; then
    echo " -> Created: $name"
    created=$((created+1))
  else
    echo " -> Failed to create category: $name"
    echo "Response: $resp"
  fi
done

echo "Sync complete. Created ${created} new categories."