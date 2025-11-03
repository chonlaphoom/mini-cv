\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2025/09/25 my clean format class]

\LoadClass{article}

% import onced package
\RequirePackage{titlesec}
\RequirePackage[a4paper, margin=0.5in]{geometry}

\usepackage{fontspec} 
\usepackage{helvet} 
\setmainfont{JetBrainsMono-Medium}

\titleformat{\section}
{\Large\scshape\raggedright} 
{}{0em}            
{}                 
[\titlerule]       

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
	{}

\newcommand{\name}[1]{%
	\leftline{\fontfamily{phv}\selectfont\textbf{\Huge #1}}%
	\vspace{3mm}
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
	\indent{\large\bfseries #1 \hfill #2}%
}
\newcommand{\content}[1]{%
	{\normalsize #1}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}
