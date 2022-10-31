if ! grep -q 'websites' "$root/$services"; then
    echo "[FAIL] ./$services - missing mention of websites"
    shouldfail=1
fi

if ! grep -q 'FrontPage' "$root/$services"; then
    echo "[FAIL] ./$services - missing mention of FrontPage"
    shouldfail=1
fi
