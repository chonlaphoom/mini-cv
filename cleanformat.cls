\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cleanformat}[2025/09/25 my clean format class]

\LoadClass{article}

% import onced package
\RequirePackage{titlesec}
\RequirePackage[a4paper, margin=0.5in]{geometry}

\usepackage{fontspec} 
\setmainfont{JetBrainsMono-Medium}

\titleformat{\section}       % Customise the \section command 
{\Large\scshape\raggedright} 
{}{0em}            
{}                 
[\titlerule]       

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
	{}

\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}
	\vspace{3mm}
}

\newcommand{\contact}[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}

\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}
