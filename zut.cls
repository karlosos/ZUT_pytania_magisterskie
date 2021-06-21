\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zut}[2017/06/01 Szablon Pracy Dyplomowej na WE ZUT]

\def\@wi{off}
\def\@we{off}

\DeclareOption{wi}{\def\@wi{on}}

% Fallback
\DeclareOption*{\ClassWarning{zut}{Nieznana opcja '\CurrentOption'}}
\ProcessOptions\relax

% Load base class (report)
% Double side
% \LoadClass[a4paper,12pt,twoside]{article}
% \raggedbottom
% \RequirePackage[
% 	left 			= 25mm ,
% 	right 			= 25mm ,
% 	top 			= 20mm ,
% 	bottom			= 30mm ,
% 	bindingoffset	= 10mm
% ]{geometry}

\LoadClass[a4paper,12pt]{article}
\RequirePackage[
	left 			= 25mm ,
	right 			= 25mm ,
	top 			= 20mm ,
	bottom			= 30mm ,
	bindingoffset	= 0mm
]{geometry}

\RequirePackage{xstring}
\RequirePackage{graphicx}
\RequirePackage{fontspec}
%\RequirePackage{amsmath}
\RequirePackage{unicode-math}
%\RequirePackage[math-style=ISO]{unicode-math}
\RequirePackage{polyglossia}
\RequirePackage{parskip}
\RequirePackage{listings}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{color}
\RequirePackage{csquotes}
\RequirePackage{appendix}
\RequirePackage[
	bibstyle=zut,
	citestyle=numeric,
	maxnames=6,
	sorting=none,
	backend=biber]{biblatex}
\addbibresource{bibliografia.bib}
\RequirePackage[
	unicode,
	xetex,
	bookmarksnumbered,
	hidelinks
]{hyperref}

\usepackage{url}      
\usepackage[dvipsnames]{xcolor}
\hypersetup{
    colorlinks=true,
    linkcolor=NavyBlue,
    citecolor=NavyBlue,
    filecolor=magenta,      
    urlcolor=Cerulean,
    pdftitle={Sharelatex Example},
    %bookmarks=true,
    pdfpagemode=FullScreen,
    }
\urlstyle{same}

\RequirePackage[figure]{hypcap}
\RequirePackage[
	style=super,
	toc,
	nonumberlist,
	acronym,
	nomain,
	nogroupskip,
	nopostdot
]{glossaries}


% Paragraph indent 10mm, skip 0
\setlength\parskip{1em}%
%\setlength{\parskip}{1em}
\setlength\parindent{0mm}%

\setmainlanguage{polish}
\setotherlanguage{english}

% Main document font
\setmainfont{FranklinGothic}[
	Path 			= fonts/ ,
	Extension		= .ttf ,
	UprightFont		= *-Book ,
	ItalicFont 		= *-Book-Italic ,
	BoldFont		= *-Demi ,
	BoldItalicFont	= *-Demi-Italic ]

% Monospaced font used for Listings
\setmonofont{Inconsolata}[
	Path 			= fonts/ ,
	Extension		= .ttf ,
	UprightFont		= *-Regular ,
	BoldFont		= *-Bold ]

% \setmathfont{Cambria Math}

% Redefine font macros according to Design Rules
% Baselineskip 1.366 * size [pt] = 1.2 linespread in Word
\renewcommand*{\LARGE}{\@setfontsize\LARGE{20pt}{27.320pt}}%
\renewcommand*{\Large}{\@setfontsize\Large{17pt}{23.222pt}}%
\renewcommand*{\large}{\@setfontsize\large{14pt}{19.124pt}}%
\renewcommand*{\small}{\@setfontsize\small{11pt}{15.026pt}}%
\renewcommand*{\normalsize}{\@setfontsize\normalsize{12pt}{16.392pt}}%
\renewcommand*{\footnotesize}{\@setfontsize\footnotesize{10pt}{13.660pt}}%
\renewcommand*{\scriptsize}{\@setfontsize\scriptsize{8pt}{10.928pt}}%
\renewcommand*{\tiny}{\@setfontsize\tiny{6pt}{8.196pt}}%
\newcommand*{\on}{on}%

\ifx\@skorowidz\on
	\RequirePackage{makeidx}
	\makeindex
\fi

% Configure Listings
%

% Define some gray colors to use in listings
\definecolor{black}{gray}{0}
\definecolor{gray10}{gray}{0.1}
\definecolor{gray20}{gray}{0.2}
\definecolor{gray30}{gray}{0.3}
\definecolor{gray40}{gray}{0.4}
\definecolor{gray50}{gray}{0.5}

% Listings extended charmap - utf8 - pl
\lst@InputCatcodes
\def\lst@DefEC{%
	\lst@CCECUse \lst@ProcessLetter
	^^80^^81^^82^^83^^84^^85^^86^^87^^88^^89^^8a^^8b^^8c^^8d^^8e^^8f%
	^^90^^91^^92^^93^^94^^95^^96^^97^^98^^99^^9a^^9b^^9c^^9d^^9e^^9f%
	^^a0^^a1^^a2^^a3^^a4^^a5^^a6^^a7^^a8^^a9^^aa^^ab^^ac^^ad^^ae^^af%
	^^b0^^b1^^b2^^b3^^b4^^b5^^b6^^b7^^b8^^b9^^ba^^bb^^bc^^bd^^be^^bf%
	^^c0^^c1^^c2^^c3^^c4^^c5^^c6^^c7^^c8^^c9^^ca^^cb^^cc^^cd^^ce^^cf%
	^^d0^^d1^^d2^^d3^^d4^^d5^^d6^^d7^^d8^^d9^^da^^db^^dc^^dd^^de^^df%
	^^e0^^e1^^e2^^e3^^e4^^e5^^e6^^e7^^e8^^e9^^ea^^eb^^ec^^ed^^ee^^ef%
	^^f0^^f1^^f2^^f3^^f4^^f5^^f6^^f7^^f8^^f9^^fa^^fb^^fc^^fd^^fe^^ff%
	^^^^0104^^^^0105^^^^0106^^^^0107^^^^0118^^^^0119^^^^0141^^^^0142%
	^^^^0143^^^^0144^^^^015a^^^^015b^^^^0179^^^^017a^^^^017b^^^^017c%
	^^00}
\lst@RestoreCatcodes

\lstset{
	numberstyle=\color{gray20}\tiny,
	numbers=left,
	tabsize=4,
	numbersep=0pt,
	breakindent=18pt,
	breakatwhitespace,
	breaklines,
	postbreak=\space,
	extendedchars=true,
	columns=[c]flexible,
	keepspaces=true,
	xleftmargin=8pt,
	framexleftmargin=0pt,
	frame=L,
	rulesep=1pt,
	rulesepcolor=\color{black},
	abovecaptionskip=-6pt,
	belowcaptionskip=6pt,
	belowskip=9pt,
	showstringspaces=false,
	basicstyle=\ttfamily\lst@ifdisplaystyle\footnotesize\fi,
	commentstyle=\color{gray40}\ttfamily,
}

\def\lst@PlaceNumber{%
	\makebox[2em][c]{\normalfont\lst@numberstyle{\thelstnumber}}\hspace{.2em}%
}

\renewcommand{\lstlistingname}{Kod źródłowy}
\renewcommand{\lstlistlistingname}{Spis kodów źródłowych}

\newcommand{\code}[3]{
    \par\vspace{.7\baselineskip}
	\lstset{caption={[#1]#1#3\hfill\break\hfill Źródło: #2}}
}

\newcommand{\codeinput}[5]{
	\lstset{caption={[#1]#1#3\hfill\break\hfill Źródło: #2}}
	\lstinputlisting[#5]{./code/#4}
}

% \setlength{\parskip}{0pt}%
%
% Configure Listings -- END
%

% Acronyms - setup if <skroty> class option active
\ifx\@skroty\on
	\setlength{\glsdescwidth}{0.9\textwidth}
	\renewcommand{\glsnamefont}[1]{\bfseries\boldmath #1}
	\makenoidxglossaries
\fi

%\widowpenalty999999
%\tolerance450
%\pretolerance250
%\hfuzz=1.5pt
%\hbadness1450

% PDF Metadata macro command
\newcommand*{\makemetadata}{
	\hypersetup{
		%hidelinks,
		pdfauthor={\@author},
		pdftitle={\@title},
		pdfcreator={XeLaTeX with hyperref},
		pdfdisplaydoctitle={true}
	}
}

%% Command: txtline{fontsize}{text}{verticalSkipAfter}
%% Macro to easily format block of text
\newcommand{\liner}[3][\normalsize]{#1 #2\par\vspace{#3}}
\newcommand{\lineb}[3][\normalsize]{#1{\bfseries #2}\par\vspace{#3}}

%\renewcommand*{\thepage}{\small\csname @arabic\endcsname \c@page}

%% Strona tytułowa
% ---------------- maketitle ----------------
\renewcommand{\maketitle}{
    \begin{center}

    	% Logo ZUT i WE
		\includegraphics[height=1.8cm]{graphic/logo_ZUT}
		\hfill
        \ifx\@wi\on
    		\includegraphics[height=1.8cm]{graphic/rysunek.eps}
    		\hspace*{0.7cm}  % bo logo WI jest za wąskie
        \fi
        \ifx\@we\on
    		\includegraphics[height=1.8cm]{graphic/logo_WE}
        \fi
		\vskip 55pt

		% Tytuł pracy w języku polskim
		\lineb[\large]{\MakeUppercase{\@title}}{18pt}
		% Tytuł pracy w języku angielskim
		% \liner{\MakeUppercase{\@tytulang}}{18pt}
		
		% Autor
		\lineb[\large]{\@author}{18pt}
		
		% nr albumu, kierunek studiów, specjalność, forma studiów
		\liner{\@miejsce, \@date}{0pt}
		\vspace{18pt}

		
		% Wypełnienie wolnej przestrzeni
		% \vfill 
			
		% Jednostka dyplomująca
		
		
		
    \end{center}

\setcounter{footnote}{0}

%% Garbage collection
\global\let\@title\@empty
\global\let\@author\@empty
\global\let\@date\@empty

\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\datawydania\relax
\global\let\datazlozenia\relax
\global\let\formastudiow\relax
\global\let\rodzajpracy\relax
\global\let\rodzajstudiow\relax
\global\let\showspec\relax

\global\let\maketitle\relax

\reset@font\normalsize
}% ---------------- maketitle ----------------

% \renewcommand*{\cleardoublepage}{%
% 	\clearpage%
% 	\if@twoside\ifodd\c@page\else%
%   		\null\thispagestyle{empty}\newpage%
%   		\if@twocolumn
%   			\hbox{}\newpage
%   		\fi
%     \fi\fi%
% }

%\renewcommand{\tableofcontents}{
%	\if@twocolumn
%		\@restonecoltrue\onecolumn
%	\else
%		\@restonecolfalse
%	\fi
%	\chapter*{
%		\contentsname
%	    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}
%    }
%	\@starttoc{toc}
%	\if@restonecol
%		\twocolumn
%	\fi
%}

%
% Definicja zmiennych globalnych
%
\def\author#1{\gdef\@author{#1}}
\def\@author{???\ClassError{zut}{Brak zdefiniowanego autora pracy}\@ehc}
%
\def\nralbumu#1{\gdef\@nralbumu{#1}}
\def\@nralbumu{???\ClassError{zut}{Brak numeru albumu}\@ehc}
%
\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{???\ClassError{zut}{Nie podano kierunku studiów}\@ehc}
%
\def\specjalnosc#1{\gdef\@specjalnosc{#1}}
\def\@specjalnosc{???\ClassError{zut}{Nie podano specjalności}\@ehc}
%
\def\przedmiot#1{\gdef\@przedmiot{#1}}
\def\@przedmiot{???\ClassError{zut}{Nie podano przedmiotu}\@ehc}
%
\def\opiekun#1{\gdef\@opiekun{#1}}
\def\@opiekun{???\ClassError{zut}{Brak danych opiekuna pracy}\@ehc}
%
\def\miejsce#1{\gdef\@miejsce{#1}}
\def\@miejsce{Szczecin}
%
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{zut}{Brak słów kluczowych w języku angielskim}\@ehc}
%
\def\slowakluczowe#1{\gdef\@slowakluczowe{#1}}
\def\@slowakluczowe{???\ClassError{zut}{Brak słów kluczowych}\@ehc}
%
\def\tytulang#1{\gdef\@tytulang{#1}}
\def\@tytulang{???\ClassError{zut}{Brak tytułu pracy w języku angielskim}\@ehc}
%
\def\subtitle#1{\gdef\@subtitle{#1}}
%
\def\datazlozenia#1{
	\gdef\@datazlozenia{#1}
	\StrRight{\@datazlozenia}{4}[\@date]
}
\def\@datazlozenia{???\ClassError{zut}{Nie podano daty złożenia pracy w dziekanacie}\@ehc}
%
\def\datawydania#1{\gdef\@datawydania{#1}}
\def\@datawydania{???\ClassError{zut}{Nie podano daty wydania tematu pracy}\@ehc}
%
\def\rodzajstudiow#1{
	\gdef\@rodzajstudiow{#1}
	\def\@forma{N}
	\def\@stopien{2}
	\StrLeft{\@rodzajstudiow}{1}[\@tfrm]
	\StrRight{\@rodzajstudiow}{1}[\@tstp]
	
	\ifx\@forma\@tfrm
		\gdef\@formastudiow{niestacjonarne}
	\fi
	
	\ifx\@stopien\@tstp
		\gdef\@rodzajpracy{magisterska}
		\gdef\@showspec{on}
	\fi
	
	\let\@forma\relax
	\let\@tfrm\relax
	\let\@stopien\relax
	\let\@tstp\relax
}
\def\@rodzajstudiow{???\ClassError{zut}{Nie podano rodzaju studiów [S1/S2/N1/N2]}\@ehc}
%
\gdef\@showspec{off}
\gdef\@rodzajpracy{inżynierska}
\gdef\@formastudiow{stacjonarne}

\newcommand{\rysunekb}[4]{
\begin{figure}[htb]
	\centering\fbox{\includegraphics[height=6cm,width=0.8\textwidth,keepaspectratio]{graphic/#1}}\\
	\caption{#2}\source{#3}
\end{figure}
}
%
\newcommand{\rysunek}[4]{
\begin{figure}[htb]
	\centering\includegraphics[height=6cm,width=0.8\textwidth,keepaspectratio]{graphic/#1}\\
	\caption{#2}\source{#3}
\end{figure}
}
%

%\def\indexemdashes{%
\def\@idxitem{\par\hangindent 0pt}
\def\subitem{\par\hangindent 0pt --- }
\def\subsubitem{\par\hangindent 0pt --- --- }
\def\indexspace{\par\vskip 10pt plus 5pt minus 3pt\relax}%}
%\indexemdashes

\setlength\abovecaptionskip{0em}
\setlength\belowcaptionskip{0\p@}

\renewcommand{\@makecaption}[2]{
	\vskip-\abovecaptionskip\reset@font
	\small\textbf{#1.} #2\hfill\normalsize\par
	\vskip\belowcaptionskip
}

\newcommand*{\source}[1]{
	\par
	\begin{flushleft}
		\reset@font\small Źródło:~#1%
	\end{flushleft}
}


\RequirePackage{subcaption}

% Captions setup
\captionsetup[figure]{labelfont=bf, font=small}
\captionsetup[lstlisting]{labelfont=bf, font=small}
\captionsetup[table]{labelfont=bf, font=small}
\captionsetup[subfigure]{labelformat=empty, font=small, justification=centering}
\captionsetup{justification=raggedright,singlelinecheck=false}

% Enumerations setup
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep, topsep=0pt}
\setlist[enumerate]{noitemsep, topsep=0pt}

% Description
\renewcommand*\descriptionlabel[1]{\hspace\leftmargin$#1$}

% TOC depth
\setcounter{tocdepth}{2}

% Question icon
\newcommand{\question}{
    \marginpar{\includegraphics[scale=0.025]{graphic/question_mark.png}\hfill}
}

\endinput