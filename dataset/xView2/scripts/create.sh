for f in *.png; do
    printf '%s\n' "${f%.png}" >> val.txt
done
