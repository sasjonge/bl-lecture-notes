\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{settings/template}
\LoadClass[12pt,a4paper,oneside]{scrartcl}

\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}

\usepackage{microtype} % Microtypesetting for better layout

\usepackage{graphicx} 	% show graphics
\usepackage{hyperref} 	% use urls, link to sections, mail-addresses

\usepackage{amssymb}
\usepackage{amsthm}
\usepackage{thmtools} %List of theorems
\usepackage{mathtools} %\DeclareMathOperator
\usepackage{stmaryrd} % for bigsqcap
\usepackage{biblatex}
\usepackage{tabto}
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
\usetikzlibrary{arrows.meta}
\usetikzlibrary{positioning}

%This has to be in the preamble
\DeclareMathOperator{\rd}{rd}
\DeclareMathOperator{\sub}{sub}
% This is an attempt to fix spacing around \left( and \right)
% See https://tex.stackexchange.com/questions/2607/spacing-around-left-and-right
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}

\usepackage{enumitem}

\endinput
