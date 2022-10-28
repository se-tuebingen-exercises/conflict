# detect if Team contains a "programspourtue-..." email
if ! grep -q '`programspourtue-' "$root/$team"; then
    echo "[FAIL] ./$team - missing email starting with programspourtue"
    shouldfail=1
fi

# detect if Services contains a "programspourtue..." email
if ! grep -q '`programspourtue' "$root/$services"; then
    echo "[FAIL] ./$services - missing email starting with programspourtue"
    shouldfail=1
fi

