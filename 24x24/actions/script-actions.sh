for f in *.svg;
do
echo "Changing color of $f ..."
sed -i --follow-symlinks 's/#2ecc71/#8ec07c/g' "$f";
sed -i --follow-symlinks 's/#43be80/#689d6a/g' "$f";
sed -i --follow-symlinks 's/#f2784b/#fe8019/g' "$f";
sed -i --follow-symlinks 's/#fff/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#cae7fc/#83a598/g' "$f";
sed -i --follow-symlinks 's/#da4453/#cc241d/g' "$f";
sed -i --follow-symlinks 's/#eff0f1/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#aaaaaa/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#5294e2/#458588/g' "$f";
sed -i --follow-symlinks 's/#fdbc4b/#d79921/g' "$f";
sed -i --follow-symlinks 's/#4fef42/#b8bb26/g' "$f";
sed -i --follow-symlinks 's/#27ae60/#689d6a/g' "$f";
sed -i --follow-symlinks 's/#f27935/#fe8019/g' "$f";
sed -i --follow-symlinks 's/#04896a/#427b58/g' "$f";
sed -i --follow-symlinks 's/#3a539b/#076678/g' "$f";
sed -i --follow-symlinks 's/#fdd285/#fabd2f/g' "$f";
sed -i --follow-symlinks 's/#1d99f3/#458588/g' "$f";
sed -i --follow-symlinks 's/#7fcc74/#8ec07c/g' "$f";
sed -i --follow-symlinks 's/#75e73c/#b8bb26/g' "$f";
sed -i --follow-symlinks 's/#3daee9/#458588/g' "$f";
sed -i --follow-symlinks 's/#fcfcfc/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#b3b3b3/#a89984/g' "$f";
sed -i --follow-symlinks 's/#4285f4/#458588/g' "$f";
sed -i --follow-symlinks 's/#dfdfdf/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#3c7ee7/#458588/g' "$f";
sed -i --follow-symlinks 's/#f67400/#fe8019/g' "$f";
sed -i --follow-symlinks 's/#ffffff/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#9b59b6/#b16286/g' "$f";
sed -i --follow-symlinks 's/#9b59b6/#b16286/g' "$f";
sed -i --follow-symlinks 's/#232629/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#ebdbb2fff/#ebdbb2/g' "$f";
sed -i --follow-symlinks 's/#666666/#665c54/g' "$f";
sed -i --follow-symlinks 's/#d24d57/#cc241d/g' "$f";

done
