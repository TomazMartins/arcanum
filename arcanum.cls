% ======================================
%              INITIAL
% ======================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{arcanum}[2016/7/16 Documents with RPG content]

\LoadClass[10pt,twocolumn,twoside]{book} % Class Base

% ========= Require Packages ===========
\RequirePackage{titlesec}           % change titles
\RequirePackage{xcolor}             % access definition of colors
\RequirePackage[many]{tcolorbox}    % access the color boxes
\RequirePackage{varwidth}           % change width
\RequirePackage{lcg}                % generate randomic numbers
\RequirePackage{calc}                % do calculations


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
%               COMMANDS
% ======================================

% ============== Dices =================
\newcommand{\dice}[2]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=#2,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}

\newcommand{\dfour}[1]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=4,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}

\newcommand{\dsix}[1]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=6,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}

\newcommand{\deight}[1]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=8,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}

\newcommand{\dten}[1]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=10,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}

\newcommand{\dtwelve}[1]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=12,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}

\newcommand{\dtwenty}[1]
{
  \newcounter{result}
  \setcounter{result}{0}
  
  \foreach \i in {1,...,#1}
  {
    \reinitrand[seed=\i,last=20,counter=dice] \rand
    \setcounter{result}{\value{result}+\value{dice}}
  }
  
  \theresult
}


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
\newtcolorbox{statbox}[2]
{
  beamer,
  skin=beamerfirst,
  title={#1 (#2)},
  fonttitle=\bfseries,
  colbacktitle=darkblue,
  colback=cyan!5,
  colframe=black!50,
  boxrule=0.1pt,
  sharp corners
}

\newenvironment{statblock}[8][]
{
  % Basic Skills
  \newcounter{for} \setcounter{for}{#3}
  \newcounter{des} \setcounter{des}{#4}
  \newcounter{con} \setcounter{con}{#5}
  \newcounter{int} \setcounter{int}{#6}
  \newcounter{sab} \setcounter{sab}{#7}
  \newcounter{car} \setcounter{car}{#8}

  \newcommand{\nd}[1]{ND ##1,}
  \newcommand{\type}[1]{##1;}
  \newcommand{\dv}[2]{DV ##1d##2; \dice{##1}{##2} PV,}

  \newcommand{\basic}[4]
  {
    \nd{##1} \type{##2} \dv{##3}{##4}
  }

  \begin{statbox}{#2}{#1}
}
{
  \end{statbox}
}