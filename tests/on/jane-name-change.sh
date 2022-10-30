# detect if Jane Smith has her name changed
if ! grep -q 'Jane Smith' "$root/$team"; then
    echo "[FAIL] ./$team - missing Jane Smith (formerly Jane Doe)"
    shouldfail=1
fi

if ! grep -q 'jane\.smith' "$root/$team"; then
    echo "[FAIL] ./$team - missing Jane Smith's email (formerly Jane Doe)"
    shouldfail=1
fi

if ! grep -q 'Jane Smith' "$root/$services"; then
    echo "[FAIL] ./$services - missing Jane Smith (formerly Jane Doe)"
    shouldfail=1
fi

