# detect if Team contains a "jonathan2" email
if ! grep -q 'jonathan2' "$root/$team"; then
    echo "[FAIL] ./$team - 'jonathan2' does not have an email"
    shouldfail=1
fi
