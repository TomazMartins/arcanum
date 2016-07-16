\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{arcanum}[2016/7/16 Documents with RPG content]

\LoadClass[12pt,twocolumn,twoside]{book}
\RequirePackage{titlesec}
\RequirePackage{color}


% ======================================
%                COLORS
% ======================================
\definecolor{blue}{RGB}{41,5,195}
\definecolor{darkblue}{RGB}{0, 0, 153}
\definecolor{white}{RGB}{255, 255, 255}
\definecolor{gray}{RGB}{242, 242, 242}
\definecolor{green}{RGB}{0, 153, 0}
\definecolor{red}{RGB}{255, 51, 0}
\definecolor{yellow}{RGB}{229, 230, 0}
\definecolor{purple}{RGB}{110, 0, 110}


% ======================================
%              TITLE STYLE
% ======================================
\titleformat{\chapter}
[display]
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

\titleformat{\section}
{
  \large
  \bfseries
  \raggedright
  \color{blue}
}
{}
{0cm}
{}
[\titlerule]