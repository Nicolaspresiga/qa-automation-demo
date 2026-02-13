#!/usr/bin/env bash
set -e

required_files=(
  "README.md"
  "package.json"
  ".github/workflows/qa.yml"
  "src/app.js"
)

echo "Checking required files..."

missing=0
for f in "${required_files[@]}"; do
  if [ ! -f "$f" ]; then
    echo "Missing: $f"
    missing=1
  else
    echo "Found:   $f"
  fi
done

if [ "$missing" -eq 1 ]; then
  echo "Validation failed: missing required files."
  exit 1
fi

echo "Validation passed."
