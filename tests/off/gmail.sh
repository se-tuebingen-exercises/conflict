# detect if both pages contain a gmail
if ! grep -q 'gmail\.com' "$root/$team"; then
    echo "[FAIL] ./$team - missing email on gmail domain"
    shouldfail=1
fi

if ! grep -q 'gmail\.com' "$root/$services"; then
    echo "[FAIL] ./$services - missing email on gmail domain"
    shouldfail=1
fi
