# detect if Team contains an email with '@'
if ! grep -q '@' "$root/$team"; then
    echo "[FAIL] ./$team - missing email with '@'"
    shouldfail=1
fi

# detect if Services contains an email with '@'
if ! grep -q '@' "$root/$services"; then
    echo "[FAIL] ./$services - missing email with '@'"
    shouldfail=1
fi
