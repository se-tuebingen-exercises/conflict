if grep -q 'statistic' "$root/$services"; then
    echo "[FAIL] ./$services - unexpected mention of statistics"
    shouldfail=1
fi

if grep -q 'Statistic' "$root/$services"; then
    echo "[FAIL] ./$services - unexpected mention of Statistics"
    shouldfail=1
fi

if grep -q 'inference' "$root/$services"; then
    echo "[FAIL] ./$services - unexpected mention of inference"
    shouldfail=1
fi

if ! grep -q 'machine learning' "$root/$services"; then
    echo "[FAIL] ./$services - missing mention of machine learning"
    shouldfail=1
fi

if ! grep -q 'decision trees' "$root/$services"; then
    echo "[FAIL] ./$services - missing mention of decision trees"
    shouldfail=1
fi
