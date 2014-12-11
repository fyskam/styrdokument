
\NeedsTeXFormat{LaTeX2e}[2001/01/01]
\ProvidesClass{../resources/dgovdoc}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{a4paper}
\ExecuteOptions{12pt}
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{article}

\AtBeginDocument{
  \RequirePackage{graphicx}
  \RequirePackage{titlesec}
  \titleformat{\section}{\normalfont\Large\bfseries}{\S\thesection}{1em}{}
  \titleformat{\subsection}{\normalfont\large\bfseries}{\S\thesubsection}{1em}{}
  \titleformat{\subsubsection}{\normalfont\normalsize\bfseries}{\S\thesubsubsection}{1em}{}
  \titleformat{\paragraph}{\normalfont\normalsize\bfseries}{\S\theparagraph}{1em}{}
  \titleformat{\subparagraph}{\normalfont\normalsize\bfseries}{\S\thesubparagraph}{1em}{}
  \usepackage{fancyhdr}
  \usepackage{lastpage}
  \usepackage[utf8]{inputenc}
  \pagestyle{fancy}
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \chead{\itshape\footnotesize \@title~\today}
  \rhead{\itshape\footnotesize \thepage~(\pageref{LastPage})}
}

\def\logo#1{\gdef\@logo{#1}}
\def\organisation#1{\gdef\@organisation{#1}}
\def\@logo{dsekt.eps}
\def\@organisation{Fysikums Kamratförening}
\renewcommand{\maketitle}{
	\hspace{-2.5cm}
	\begin{minipage}[b]{0.4\linewidth}
		\center
		\includegraphics[scale=0.25]{../resources/logga_600dpi.png}
	\end{minipage}
	\hspace{-1cm}
	\begin{minipage}[b]{0.85\linewidth}
		\huge \textbf{\@title}\\
		\LARGE \textsc{\@organisation}
		\vspace{0.5cm}
	\end{minipage}
}

\setcounter{secnumdepth}{5}

\endinput
