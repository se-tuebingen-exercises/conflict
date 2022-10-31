if grep -q 'intern' "$root/$team"; then
    echo "[FAIL] ./$team - extra intern"
    shouldfail=1
fi

if ! grep -q 'full-stack' "$root/$team"; then
    echo "[FAIL] ./$team - missing a full-stack programmer"
    shouldfail=1
fi

if ! grep -q 'Karl Schneider, BSc.' "$root/$team"; then
    echo "[FAIL] ./$team - missing Karl's academic title"
    shouldfail=1
fi

