if ! grep -q 'Statistical m' "$root/$services"; then
    echo "[FAIL] ./$services - missing statistical methods or models"
    shouldfail=1
fi
