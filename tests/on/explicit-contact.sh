if ! grep -q 'contact us, _write us' "$root/$services"; then
    echo "[FAIL] ./$services - missing long version of contact"
    shouldfail=1
fi

