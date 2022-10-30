if ! grep -q 'experts: Jonathan' "$root/$services"; then
    echo "[FAIL] ./$services - missing webdev experts"
    shouldfail=1
fi

if ! grep -q 'experts: Jane' "$root/$services"; then
    echo "[FAIL] ./$services - missing stats/AI experts"
    shouldfail=1
fi
