cd old
for i in ./*.img; do mv -i "$i" "${i%.img}"; done
cd ..
