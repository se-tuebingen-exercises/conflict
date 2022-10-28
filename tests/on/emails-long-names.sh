# detect if Team contains a "jonathan.schmidt" email
if ! grep -q 'jonathan\.schmidt' "$root/$team"; then
    echo "[FAIL] ./$team - missing email starting with programspourtue"
    shouldfail=1
fi # detect if Team contains a "jonathan.schmidt" email

