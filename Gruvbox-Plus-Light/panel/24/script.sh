for f in *.svg;
do
    echo "Changing $f ..."
    # sed -i --follow-symlinks 's/ stroke-width=".*"//gI' "$f";
    # sed -i --follow-symlinks 's/ id="current-color-scheme"//gI' "$f";
    # sed -i --follow-symlinks 's/css">/css" id="current-color-scheme">/gI' "$f";
    sed -i --follow-symlinks 's/ebdbb2/282828/gI' "$f";
    # sed -i --follow-symlinks 's/^<svg.*/<svg width="16" height="16" version="1.1" xmlns="http:\/\/www.w3.org\/2000\/svg">/gI' "$f";
done
