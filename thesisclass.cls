%% thesisclass.cls
%% Copyright 2022 D.Piciocchi
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status 'maintained'.
% 
% The Current Maintainer of this work is D. Piciocchi.
%
% This work consists of the files masterthesis.cls, thesisclass.sty,
% Master_Thesis.tex, Bibliography.bib, glossary.tex, compilepdf.sh,
% the Chapters folder containing titlepage.tex, titlepage.pdf,
% abstract.tex, acknowledgements.tex, instructions.tex
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% CLASS FILE %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{masterthesis}[2022/07/08 masterthesis class]

\newcommand{\@classname}{masterthesis} % Class name
\newcommand{\@baseclass}{memoir} % Base class name

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}} % Pass through any options to the base class

\ProcessOptions\relax % Process the options

\LoadClass{\@baseclass} % Load the base class

% Load configuration code and packages
\input{thesisclass.sty} % Load the code common to all classes
