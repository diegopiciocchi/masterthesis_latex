# compilepdf.sh
# Copyright 2022 D.Piciocchi
#
# This work may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3
# of this license or (at your option) any later version.
# The latest version of this license is in
#   http://www.latex-project.org/lppl.txt
# and version 1.3 or later is part of all distributions of LaTeX
# version 2005/12/01 or later.
#
# This work has the LPPL maintenance status 'maintained'.
# 
# The Current Maintainer of this work is D. Piciocchi.
#
# This work consists of the files masterthesis.cls, thesisclass.sty,
# Master_Thesis.tex, Bibliography.bib, glossary.tex, compilepdf.sh,
# the Chapters folder containing titlepage.tex, titlepage.pdf,
# abstract.tex, acknowledgements.tex, instructions.tex
#  

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# %%%%%%%%%%%% COMPILER FILE %%%%%%%%%%%%
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#!/bin/bash  

# Make the title page

cd Chapters/Frontmatter

printf "\n COMPILING THE TITLE PAGE... \n"
rm titlepage.aux
pdflatex titlepage
# Clear aux files
rm titlepage.aux titlepage.log

cd ..
cd ..

# Now take care of the main document
rm $1.aux
# First pdf compile
printf "\n COMPILING THE TEMPLATE \n"  
pdflatex $1 
# Make glossary
printf "\n NOW MAKING THE GLOSSARY \n"  
makeglossaries $1 
# Make bibliography
printf "\n NOW MAKING THE BIBLIOGRAPHY \n"
biber $1
# Recompile pdf
printf "\n NOW COMPILING AGAIN THE MAIN DOCUMENT \n"
pdflatex $1 
# Clear aux files. You can avoid this if you need them 
rm $1.acn $1.aux $1.bbl $1.bcf $1.blg $1.glo $1.ist $1.lof $1.log $1.lot $1.run.xml $1.toc $1.xmpdata pdfa.xmpi $1.glg $1.gls $1.acr $1.alg
