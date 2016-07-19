\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{arcanum}[2016/7/16 Documents with RPG content]

\LoadClass[12pt,twocolumn,twoside]{book}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage[many]{tcolorbox}
\RequirePackage{varwidth}


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
\newtcolorbox{descriptionblock}[1]
{
  enhanced,
  before skip=2mm,
  after skip=2mm,
  colback=red!5,
  colframe=black!50,
  boxrule=0.05pt,
  attach boxed title to top left={
    xshift=0.5cm,
    yshift*=1mm-\tcboxedtitleheight
  },
  varwidth boxed title*=-3cm,
  boxed title style={
    frame code={
      \path[fill=tcbcol@back!30!black]
      ([yshift=-1mm,xshift=-1mm]frame.north west)
      arc[start angle=0,end angle=180,radius=1mm]
      ([yshift=-1mm,xshift=1mm]frame.north east)
      arc[start angle=180,end angle=0,radius=1mm];

      \path[left color=tcbcol@back!60!black,right color=tcbcol@back!60!black,
      middle color=tcbcol@back!80!black]
      ([xshift=-2mm]frame.north west) -- ([xshift=2mm]frame.north east)
      [rounded corners=1mm]-- ([xshift=1mm,yshift=-1mm]frame.north east)
      -- (frame.south east) -- (frame.south west)
      -- ([xshift=-1mm,yshift=-1mm]frame.north west)
      [sharp corners]-- cycle;
    },
    interior engine=empty,
  },
  fonttitle=\bfseries,
  colbacktitle=red,
  drop small lifted shadow,
  sharp corners,
  title={#1}
}

% ============ Stat Block ==============
\newtcolorbox{statbox}[1]
{
  beamer,
  skin=beamerfirst,
  title={#1},
  fonttitle=\bfseries,
  colbacktitle=darkblue,
  colback=cyan!5,
  colframe=black!50,
  boxrule=0.1pt,
  sharp corners
}

\newenvironment{statblock}[1]
{
  \begin{statbox}{#1}
}
{
  \end{statbox}
}