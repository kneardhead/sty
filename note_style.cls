\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note_style}[2023/01/20 LaTeX class for note taking]

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[10pt, a4paper]{article}
\RequirePackage[index, toc, acc, secthm, nofancysoln, monocolor, 
            serif, soul, numdef, pagenotes]{ahsan_new}
\RequirePackage{titletoc}
% \geometry{papersize={3.6in,4.8in},hmargin=0.2in,vmargin={0.1in,0.1in}}

\graphicspath{ {./images/}{./pages/} }

\author{M Ahsan Al Mahir} 
\date{ \today }

\def\problemSection{
    \counterwithin{problemBase}{subsection}

    \makeatletter
    \renewcommand{\theproblemBase}{\arabic{subsection}.\arabic{problemBase}}
    \renewcommand{\thesubsection}{\arabic{subsection}.}
    \titlecontents{subsection} [1.5em] {} {{\thecontentslabel} \hspace{.5em}} {} {\titlerule*[.5pc]{.}\contentspage}
    \makeatother
}

\def\noproblemSection{
    \counterwithin{problemBase}{section}
    \makeatletter
    \renewcommand{\theproblemBase}{\arabic{section}.\arabic{subsection}.\arabic{problemBase}}
    \renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}.}
    \titlecontents{subsection} [1.5em] {} {{\thecontentslabel} \hspace{.5em}} {} {\titlerule*[.5pc]{.}\contentspage}
    \makeatother
}
