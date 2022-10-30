if ! grep -q '(CEO)' "$root/$team"; then
    echo "[FAIL] ./$team - missing CEO after name"
    shouldfail=1
fi

if ! grep -q '(CFO)' "$root/$team"; then
    echo "[FAIL] ./$team - missing CFO after name"
    shouldfail=1
fi

if ! grep -q '(CTO)' "$root/$team"; then
    echo "[FAIL] ./$team - missing CTO after name"
    shouldfail=1
fi
