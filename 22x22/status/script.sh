for f in *.svg;
do
echo "Changing color of $f ..."
sed -i --follow-symlinks 's/#da4453/#fb4934/g' "$f";
sed -i --follow-symlinks 's/#eff0f1/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#27ae60/#689d6a/g' "$f";
sed -i --follow-symlinks 's/#fdbc4b/#fabd2f/g' "$f";
sed -i --follow-symlinks 's/#ffffff/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#9b59b6/#8f3f71/g' "$f";
sed -i --follow-symlinks 's/#666666/#665c54/g' "$f";
sed -i --follow-symlinks 's/#31363b/#282828/g' "$f";
sed -i --follow-symlinks 's/#4f575f/#504945/g' "$f";
sed -i --follow-symlinks 's/#93cee9/#83a598/g' "$f";
sed -i --follow-symlinks 's/#3daee9/#458588/g' "$f";

done
