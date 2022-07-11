# thesisclass LaTeX Class

This is a LaTeX class designed to typeset my Master's Degree Thesis in Physics at the University of Trento. All the instructions, which also serve as a basic output example, are in the PDF file produced by the TeX files in the repository. For the sake of simplicity, I leave here the instructions to compile the document.

## Option 1: Using the included bash script

The first time, you will need to make the file executable running

``chmod +x compilepdf.s``

And then you will be able to run

``./compilepdf.sh thesisclass``

## Option 2: Manually with ``pdflatex``

You can also compile the documents manually. First, you need to compile the titlepage:

``cd Chapters/Frontmatter``
``pdflatex titlepage``

Then go to the main folder and compile the document

``cd ..``
``cd ..``
``pdflatex thesisclass``

Make the bibliography and glossary

``biber thesisclass``
``makeglossaries thesisclass``

And finally compile again

``pdflatex thesisclass`` 

## Final Notice

Please remember that this project is still under development, so mistakes are likely disseminated in the code and manual. 


