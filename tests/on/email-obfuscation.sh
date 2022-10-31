# detect if Team contains an email with '@'
if grep -q '@' "$root/$team"; then
    echo "[FAIL] ./$team - email has '@'"
    shouldfail=1
fi

# detect if Services contains an email with '@'
if grep -q '@' "$root/$services"; then
    echo "[FAIL] ./$services - email has '@'"
    shouldfail=1
fi

# detect if Team contains an email with '(at)'
if ! grep -q '(at)' "$root/$team"; then
    echo "[FAIL] ./$team - missing (at)"
    shouldfail=1
fi

# detect if Services contains an email with '(at)'
if ! grep -q '(at)' "$root/$services"; then
    echo "[FAIL] ./$services - missing (at)"
    shouldfail=1
fi


