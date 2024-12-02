# pdf2image a.pdf
param (
  [string]$f
)

# replace .pdf to .png
$fout = $f -replace ".pdf", ".png"

# echo "$args to $f.png"
inkscape $f --pdf-poppler --export-background-opacity=0 --export-dpi=300 --export-type=png --pages=1
# --export-filename $fout
