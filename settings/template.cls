\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{settings/template}
\LoadClass[12pt,a4paper,oneside]{scrartcl}

\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}

% The usepackage's should be cleaned one day...

\usepackage{graphicx} 	% show graphics
\usepackage{hyperref} 	% use urls, link to sections, mail-addresses
\usepackage{xargs}      % for more than one opt parameter in newcommands

\usepackage{amssymb}
\usepackage{amsthm}
\usepackage{thmtools} %List of theorems
\usepackage{mathtools}
\usepackage{stmaryrd} % for bigsqcap
\usepackage{tabu} % for tables with defined width
\usepackage[sort]{natbib} % For quotationn
\usepackage{pgfplots}
\pgfplotsset{compat=1.14}
\usepackage{tabto}
\usepackage{todonotes}
\usepackage{xcolor}
\usepackage{csquotes} % for \enquote

%%%%%%%%%%%%%%%%%%%
% Define Theorems %
%%%%%%%%%%%%%%%%%%%
\theoremstyle{definition}
\declaretheorem[numberwithin= section, name = Definition]{definition}
\declaretheorem[sibling=definition, name = Lemma]{lemma}
\declaretheorem[sibling=definition, name = Theorem]{theorem}
\declaretheorem[sibling=definition, name = Korollar]{korollar}
\declaretheorem[sibling=definition, name = Proposition]{proposition}
\declaretheorem[numberwithin=section, name = T]{tafel}

%Look behind you! a three-headed hack!
%Put the number after the theorem name in listoftheorems (e.g. Definition 3.4 instead of 3.4 Definition)
\makeatletter
\def\ll@definition{%
 \thmt@thmname \  \protect\numberline{\csname the\thmt@envname \endcsname}\ifx
 \@empty \thmt@shortoptarg \else \protect \thmtformatoptarg {\thmt@shortoptarg 
 }\fi
}
\def\ll@theorem{%
 \thmt@thmname \  \protect\numberline{\csname the\thmt@envname \endcsname}\ifx
 \@empty \thmt@shortoptarg \else \protect \thmtformatoptarg {\thmt@shortoptarg 
 }\fi
 }

\def\ll@tafel{%
 \thmt@thmname \  \protect\numberline{\csname the\thmt@envname \endcsname}\ifx
 \@empty \thmt@shortoptarg \else \protect \thmtformatoptarg {\thmt@shortoptarg 
 }\fi
 }

\def\ll@lemma{%
 \thmt@thmname \  \protect\numberline{\csname the\thmt@envname \endcsname}\ifx
 \@empty \thmt@shortoptarg \else \protect \thmtformatoptarg {\thmt@shortoptarg 
 }\fi
 }
\def\ll@korolar{%
 \thmt@thmname \  \protect\numberline{\csname the\thmt@envname \endcsname}\ifx
 \@empty \thmt@shortoptarg \else \protect \thmtformatoptarg {\thmt@shortoptarg 
 }\fi
 }
\def\ll@proposition{%
 \thmt@thmname \  \protect\numberline{\csname the\thmt@envname \endcsname}\ifx
 \@empty \thmt@shortoptarg \else \protect \thmtformatoptarg {\thmt@shortoptarg 
 }\fi
 }
\makeatother

\usepackage[headsepline]{scrlayer-scrpage}
\renewcommand\sectionmarkformat{\thesection\autodot\quad}
%\setkomafont{pageheadfoot}{\footnotesize\scshape}
\KOMAoption{headsepline}{.1pt:}
\automark{part}
\automark*{section}
\clearpairofpagestyles% entfernen der voreingestellten Inhalte
\cfoot{\pagemark}
\ihead{\rightbotmark}

%%%%%%%%%%%%%
% page size %
%%%%%%%%%%%%%
\usepackage[top=1in, bottom=1in, left=1in, right=1in]{geometry}

%%%%%%%%%%%%%
% paragraph %
%%%%%%%%%%%%%
\setlength{\parskip}{2mm}
\setlength\parindent{0pt}

% TIKZ %
\usepackage{tikz}

\usetikzlibrary{shapes.geometric,arrows,fit,matrix,positioning}
\tikzset
{
    treenode/.style = {circle, draw=black, align=center,
                          minimum size=1cm, anchor=center},
    subtree/.style  = {regular polygon, regular polygon sides=3,
                          draw=black, align=center,
                          minimum size=1cm, anchor=center}
}



\endinput
