mkdir thumbs
magick mogrify -format jpg -path thumbs -thumbnail 256x256 *.png

cd thumbs

shopt -s nullglob
for f in *.jpg; do
   convert "$f" -set filename:new "%t-thumb" "%[filename:new].jpg"
done

cd -

mv thumbs/*-thumb.jpg .
