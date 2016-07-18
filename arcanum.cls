\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{arcanum}[2016/7/16 Documents with RPG content]

\LoadClass[12pt,twocolumn,twoside]{book}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage[many]{tcolorbox}


% ======================================
%                COLORS
% ======================================
\definecolor{blue}{RGB}{41,5,195}
\definecolor{darkblue}{RGB}{0, 0, 153}
\definecolor{manganeseblue}{RGB}{3,168,158}
\definecolor{cyan}{RGB}{0,139,139}
\definecolor{white}{RGB}{255, 255, 255}
\definecolor{gray}{RGB}{242, 242, 242}
\definecolor{green}{RGB}{0, 153, 0}
\definecolor{red}{RGB}{255, 51, 0}
\definecolor{yellow}{RGB}{229, 230, 0}
\definecolor{purple}{RGB}{110, 0, 110}


% ======================================
%              TITLE STYLE
% ======================================

% ============= Chapter ================
\titleformat{\chapter}
[frame]
{
  \Huge
  \bfseries
  \raggedright
  \color{darkblue}
}
{Chapter \thechapter}
{0.5cm}
{\centering}
[]


% ============= Section ================
\titleformat{\section}
[hang]
{
  \Large
  \bfseries
  \raggedright
  \color{cyan}
}
{}
{0cm}
{\raggedright}
[\titlerule]

% =========== Subsection ===============
\titleformat{\subsection}
[hang]
{
  \large
  \bfseries
  \raggedright
  \color{manganeseblue}
}
{}
{0cm}
{\raggedright}
[]

% ========== Subsubsection =============
\titleformat{\subsubsection}
[hang]
{
  \normalsize
  \bfseries
  \raggedright
  \color{manganeseblue}
}
{}
{0cm}
{\raggedright}
[]


% ======================================
%                 BLOCKS
% ======================================

% ======== Description Block ===========
\newcommand{\descriptionblock}[2]
{
  \begin{tcolorbox}[enhanced,title=#1, attach boxed title to top left]
  #2
  \end{tcolorbox}
}