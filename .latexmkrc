# LaTeX
#$latex = 'uplatex -synctex=1 -halt-on-error -file-line-error %O %S';
#$max_repeat = 5;

# BibTeX
#$bibtex = 'upbibtex %O %S';
#$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';

# index
#$makeindex = 'upmendex %O -o %D %S';

# DVI / PDF
#$dvipdf = 'dvipdfmx %O -o %D %S';
#$pdf_mode = 3;

#!/usr/bin/env perl

# LaTeX
#$latex = 'platex -synctex=1 -halt-on-error -file-line-error %O %S';
$latex = 'platex';
$max_repeat = 5;
$lualatex = 'lualatex -synctex=1 -halt-on-error -file-line-error %O %S';

# BibTeX
#$bibtex = 'pbibtex %O %S';
$bibtex = 'pbibtex';
#$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';

# index
$makeindex = 'mendex %O -o %D %S';

# DVI / PDF
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;

# preview
$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $dvi_previewer = "xdg-open %S";
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $dvi_previewer = "open %S";
    $pdf_previewer = "open %S";
} else {
    $dvi_previewer = "start %S";
    $pdf_previewer = "start %S";
}

# clean up
$clean_full_ext = "%R.synctex.gz";

$tectonic = "tectonic -X compile %S";
