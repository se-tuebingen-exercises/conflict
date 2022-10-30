if ! grep -q 'Chief Executive Officer' "$root/$team"; then
    echo "[FAIL] ./$team - missing long name of CEO"
    shouldfail=1
fi
if ! grep -q 'Chief Technology Officer' "$root/$team"; then
    echo "[FAIL] ./$team - missing long name of CTO"
    shouldfail=1
fi
if ! grep -q 'Chief Financial Officer' "$root/$team"; then
    echo "[FAIL] ./$team - missing long name of CFO"
    shouldfail=1
fi
