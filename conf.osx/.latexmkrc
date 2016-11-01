$clean_ext = 'thm glo gls bbl hd loe';
$makeindex = 'makeindex -s gind.ist %O -o %D %S';
$pdflatex = "xelatex -synctex=1 %O %S";
$pdf_mode = 1;
$preview_continuous_mode = 1;
$postscript_mode = $dvi_mode = 0;

# equal to -quiet option
$silent = 0;

# The command to invoke a PDF previewer
$pdf_previewer = 'open -a /Applications/Skim.app %O %S';
