%--------------------------------------------------
% CLASS CONFIGURATION
%--------------------------------------------------

\ProvidesClass{cv}[2024/05/20 V1.0 CV class]
\LoadClass{article}


%--------------------------------------------------
% REQUIRED PACKAGE
%--------------------------------------------------

\usepackage[utf8]{inputenc}
\usepackage[none]{hyphenat}
\usepackage{array, color, geometry, graphicx, hyperref, ifthen, tabularx}


%--------------------------------------------------
% CONFIGURATION
%--------------------------------------------------

\geometry{
	top=15mm,
	right=20mm,
	bottom=15mm,
	left=20mm,
	% showframe, % Debug
}

\pagestyle{empty}
\setlength\parindent{0em}


%--------------------------------------------------
% COLOR
%--------------------------------------------------

\definecolor{royalblue}{RGB}{65,105,225}
\definecolor{gray}{RGB}{100,100,100}


%--------------------------------------------------
% FORMATTING
%--------------------------------------------------

% cvName
% #1 first name
% #2 last name
\newcommand{\cvName}[2]{
	{\color{royalblue}\Large\bfseries\uppercase{#1}} \Large\bfseries\uppercase{#2}
}

%--------------------------------------------------

% cvLinkURL
% #1 url
\newcommand{\cvLinkURL}[1]{
	\href{#1}{\color{royalblue} #1}
}

%--------------------------------------------------

% cvLinkURLText
% #1 url
% #2 text
\newcommand{\cvLinkURLText}[2]{
	\href{#1}{\color{royalblue} #2}
}

%--------------------------------------------------

% cvSection
% #1: title
\newenvironment{cvSection}[1]{
	\medskip
	{\color{royalblue}\large\bfseries\uppercase{#1}}
	\medskip
	\hrule
	
	\begin{list}{}{\setlength{\leftmargin}{1.5em}}
		\item[]
}{
	\end{list}
}

%--------------------------------------------------

% cvSubsection
% #1: title
% #2: date
% #3: position (optional)
\newenvironment{cvSubsection}[3]{
	\textbf{#1} \hfill \textit{#2}
	\ifthenelse{\equal{#3}{}}{}{
		\\
		\textit{#3}
	}
	\smallskip
	\begin{list}{$\cdot$}{\setlength{\leftmargin}{0em}}
		\setlength{\itemsep}{-0.25em}
		\vspace{-0.5em}
}{
	\end{list}
	\vspace{0.5em}
}
