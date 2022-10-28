#!/bin/sh
set -euo pipefail

root=$(git rev-parse --show-toplevel)

shouldfail=0

team="website/team/README.md"
services="website/services/README.md"

# source all enabled tests
enabled_tests="$root/tests/on/*.sh"
for file in $enabled_tests; do
    . "$file"
done

# gather all markdown files
markdown_files=$(git ls-tree -r --full-name --name-only HEAD "$root" | grep '\.md$')

# for each markdown file, try checking if it has artifacts from a merge
for file in $markdown_files; do
    if grep -q '<<<<' "$root/$file"; then
        echo "[FAIL] ./$file - extra '<<<<' from a merge"
        shouldfail=1
    fi

    if grep -q '====' "$root/$file"; then
        echo "[FAIL] ./$file - extra '====' from a merge"
        shouldfail=1
    fi

    if grep -q '>>>>' "$root/$file"; then
        echo "[FAIL] ./$file - extra '>>>>' from a merge"
        shouldfail=1
    fi
done

# if at least one test failed, return 1 to signify error
if [ $shouldfail -eq '1' ]; then
    echo ""
    echo "Tests failed!"
    exit 1
else
    echo "Tests OK!"
    exit 0
fi
