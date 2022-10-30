if ! grep -q 'websites from frontend to backend' "$root/$services"; then
    echo "[FAIL] ./$services - missing 'websites from frontend to backend'"
    shouldfail=1
fi

if ! grep -q 'Web development' "$root/$services"; then
    echo "[FAIL] ./$services - missing 'Web development' heading"
    shouldfail=1
fi

