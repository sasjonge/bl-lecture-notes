\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}
\LoadClass[12pt,a4paper,oneside]{scrartcl}

\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}

% The usepackage's should be cleaned one day...

\usepackage{fancyhdr} 	% fancy header and footer
\usepackage{graphicx} 	% show graphics
\usepackage{listings} 	% show code listings
\usepackage{tabularx} 	% different table-env
\usepackage{hyperref} 	% use urls, link to sections, mail-addresses
\usepackage{cite}		% for citation
\usepackage{enumitem}   % for enumerate
\usepackage{scrextend}  % for addmargin
\usepackage{xargs}      % for more than one opt parameter in newcommands
                        % coloured text etc.
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage{mathtools}
\usepackage{wasysym}    % Box with checkmark
\usepackage{stmaryrd} % for bigsqcap
\usepackage{tabu} % for tables with defined width
\usepackage{natbib} % For quotationn
\usepackage{enumitem}% http://ctan.org/pkg/enumitem
\usepackage{pgfplots}
\usepackage{tabto}
\usepackage{todonotes}

\usepackage{xparse,nameref} % for chapref
\NewDocumentCommand{\chapref}{s m}{~\ref{#2}\IfBooleanF{#1}{ \nameref{#2}}.}

\usepackage{textgreek} % Use for example textepsilon
\setlength\parindent{0pt}
\let\emptyset\varnothing
%%%%%%%%%%%%%%%%%%%
% Define Theorems %
%%%%%%%%%%%%%%%%%%%
\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{theorem}[definition]{Theorem}
\newtheorem{lemma}[definition]{Lemma}



%%%%%%%%%%%%%
% page size %
%%%%%%%%%%%%%
%\usepackage{showframe}  % show layout
%\setlength{\topmargin}{-1cm}
%\setlength{\headheight}{15pt}
%\setlength{\evensidemargin}{0cm}
%\setlength{\oddsidemargin}{0cm}
%\setlength{\textheight}{24cm}
%\setlength{\textwidth}{15cm}
%\setlength{\marginparwidth}{2.5cm}
%\setlength{\parskip}{1ex}
%\setlength{\parindent}{0ex}

\usepackage[top=1in, bottom=1in, left=1in, right=1in]{geometry}

%%%%%%%%%%%%%
% paragraph %
%%%%%%%%%%%%%
%\usepackage{setspace}
%\doublespacing
%\setlength\parindent{0.5cm}
\setlength{\parskip}{2mm}

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
