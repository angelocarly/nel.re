rm -rf *-thumb.png

mkdir thumbs
magick mogrify -format png -path thumbs -thumbnail 256x256 *.png

cd thumbs

shopt -s nullglob
for f in *.png; do
   convert "$f" -set filename:new "%t-thumb" "%[filename:new].png"
done

cd -

mv thumbs/*-thumb.png .

rm -rf thumbs
