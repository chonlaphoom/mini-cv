\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2025/09/25 my clean format class]

\LoadClass{article}

% import onced package
\RequirePackage{titlesec}
\RequirePackage[a4paper, margin=0.5in]{geometry}

\usepackage{fontspec}
\usepackage{etoolbox}
\usepackage{xparse}
\setmainfont{Calibri}

\titleformat{\section}
{\Large\scshape\raggedright\vspace{-0.5em}} 
{}{0em}            
{}                 
[\titlerule]       

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
	{}

\newcommand{\name}[1]{%
	\leftline{\fontfamily{phv}\selectfont\textbf{\Huge #1}}%
	\vspace{0.5em}
}

\newcommand{\leftrighttext}[2]{%
    \noindent #1 \hfill #2 \par 
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\indent#1 \hfill #2}%
}

\newcommand{\subsectionLarge}[2]{%
	\noindent{\large\bfseries #1 \hfill #2 \vspace{-0.5em}}%
}

\newcommand{\content}[1]{%
	{\normalsize #1}%
}
\newcommand{\processworkitem}[1]{\item #1\vspace{-0.5em}}
\newcommand{\workitems}[1]{%
    \begin{itemize}
        \forcsvlist{\processworkitem}{#1}
    \end{itemize}%
}

\newcommand{\newlinesize}[1]{%
    \ifstrequal{#1}{sm}{%
			\\
    }{%
    \ifstrequal{#1}{md}{%
			\\
			\\
			}{%
       \textbf{ERROR: Please use 1 or 0.5}%
    }%
	}%
}

