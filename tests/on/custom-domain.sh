# detect if Team contains a "programspourtue.example" email
if ! grep -q 'programspourtue\.example' "$root/$team"; then
    echo "[FAIL] ./$team - missing email ending with programspourtue.example"
    shouldfail=1
fi

# detect if Services contains a "programspourtue.example" email
if ! grep -q 'programspourtue\.example' "$root/$services"; then
    echo "[FAIL] ./$services - missing email ending with programspourtue.example"
    shouldfail=1
fi
