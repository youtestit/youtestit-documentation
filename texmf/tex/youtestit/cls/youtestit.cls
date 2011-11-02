\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{youtestit}

% use the report class
%\LoadClassWithOptions{report}
\LoadClassWithOptions{report}

% images are in the epss folder
\def\input@path{{epss/}}

% use youtestit design
\RequirePackage{youtestitdesign}

% create links in the pdf
\RequirePackage[pdfborder={0 0 0}]{hyperref}

% euros can be used
\RequirePackage{eurosym}

% youtestit's packages
\RequirePackage{versioning}
\RequirePackage{system}
\RequirePackage{nota}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        class options       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% change polices with the arial option
\DeclareOption{arial}{
\renewcommand{\rmdefault}{phv}
\renewcommand{\sfdefault}{pag}
\renewcommand{\sfdefault}{pcr}}

% pass options to class
\DeclareOption*{%
\PassOptionsToClass{\CurrentOption}{report}%
}




\definecolor{colKeys}{rgb}{0,0,1} 
\definecolor{colIdentifier}{rgb}{0,0,0} 
\definecolor{colComments}{rgb}{0,0.5,1} 
\definecolor{colString}{rgb}{0.6,0.1,0.1} 

\newcommand{\sep}{\textbackslash{}}

\lstset{ 
    columns=fullflexible
    basicstyle=\ttfamily\scriptsize, % 
    numberstyle=\small,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    identifierstyle=\color{colIdentifier}, % 
    keywordstyle=\color{colKeys}, % 
    stringstyle=\color{colString}, % 
    commentstyle=\it\color{colComments},
    numbers=left,
    stepnumber=1
} 


\newenvironment{enum}{
\begin{enumerate}
  \setlength{\itemsep}{15pt}
  \setlength{\parskip}{2pt}
  \setlength{\parsep}{0pt}
}{\end{enumerate}}

\newcommand{\lstsetProperties}{
\lstset{
        columns=fullflexible
		extendedchars=false,
		showspaces=false,
        framesep=3pt,
        xleftmargin=3pt,
        xrightmargin=3pt,
        numbersep=8pt,
        breaklines=true,
        language=sh,
        frame=single,
        frameround=ffff,
        numbers=left,
        captionpos=b,
        breaklines=true,
        identifierstyle=\color{colIdentifier},
        keywordstyle=[1]*\bfseries,
        stringstyle=\color{colString},
        commentstyle=\it\color{colComments},
        basicstyle=\ttfamily\color{black}\scriptsize,
        backgroundcolor=\color{youtestitSubTitle!10}}
}
        
        
\newcommand{\lstsetJava}{
    \lstset{
        columns=fullflexible
        framesep=3pt,
        xleftmargin=3pt,
        xrightmargin=3pt,
        numbersep=8pt,
        breaklines=true,
        language=java,
        frame=single,
        frameround=ffff,
        numbers=left,
        captionpos=b,
        breaklines=true,
        identifierstyle=\color{colIdentifier},
        keywordstyle=\color{colKeys}, 
        stringstyle=\color{colString},
        commentstyle=\it\color{colComments},
        basicstyle=\ttfamily\color{black}\scriptsize,
        backgroundcolor=\color{youtestitSubTitle!10}}
}

\newcommand{\lstsetXml}{
    \lstset{
        columns=fullflexible
        framesep=3pt,
        xleftmargin=3pt,
        xrightmargin=3pt,
        numbersep=8pt,
        breaklines=true,
        language=xml,
        frameround=ffff,
        numbers=left,
        captionpos=b,
        breaklines=true,
        basicstyle=\ttfamily\color{black}\scriptsize, 
        identifierstyle=\color{colIdentifier},
        keywordstyle=\color{colKeys},
        stringstyle=\color{colString},
        commentstyle=\it\color{colComments},
        backgroundcolor=\color{youtestitSubTitle!10}}
}

\newcommand{\lstsetCss}{
    \lstset{
        columns=fullflexible
        extendedchars=false,
        showspaces=false,
        framesep=3pt,
        xleftmargin=3pt,
        xrightmargin=3pt,
        numbersep=8pt,
        breaklines=true,
        language=acsl,
        frame=single,
        frameround=ffff,
        numbers=left,
        captionpos=b, 
        breaklines=true,
        identifierstyle=\color{colIdentifier},
        keywordstyle=\color{colKeys},
        stringstyle=\color{colString},
        commentstyle=\it\color{colComments},
        basicstyle=\ttfamily\color{black}\scriptsize,
        backgroundcolor=\color{youtestitSubTitle!10}}
}

\newcommand{\lstsetSh}{
    \lstset{
        columns=fullflexible,
        extendedchars=false,
        showspaces=false,
        framesep=3pt,
        xleftmargin=3pt,
        xrightmargin=3pt,
        stepnumber=100,
        numbersep=8pt,
        breaklines=true,
        language=sh,
        frame=single,
        frameround=ffff,
        numbers=left,
        captionpos=b, 
        breaklines=true,
        identifierstyle=\color{colIdentifier},
        keywordstyle=\color{colKeys},
        stringstyle=\color{colString},
        commentstyle=\it\color{colComments},
        basicstyle=\ttfamily\color{black}\scriptsize,
        backgroundcolor=\color{youtestitSubTitle!10}}
}

\newcommand{\lstsetSql}{
    \lstset{
        columns=fullflexible,
        extendedchars=false,
        showspaces=false,
        framesep=3pt,
        stepnumber=100,
        xleftmargin=3pt,
        xrightmargin=3pt,
        numbersep=8pt,
        breaklines=true,
        language=sql,
        frame=single,
        frameround=ffff,
        numbers=left,
        captionpos=b, 
        breaklines=true,
        identifierstyle=\color{colIdentifier},
        keywordstyle=\color{colKeys},
        stringstyle=\color{colString},
        commentstyle=\it\color{colComments},
        basicstyle=\ttfamily\color{black}\scriptsize,
        backgroundcolor=\color{youtestitSubTitle!10}}
}

\newcommand{\bold}[1]{\textbf{#1}}

\newcommand{\javaType}[2]{{#1}$\mathit{<}${#2}$\mathit{>}$}

\newcommand{\dQuote}[1]{``{#1}''}


\newcommand{\img}[4]{
    \begin{figure}[!h]
     \begin{center}
      \includegraphics[width={#1}\textwidth]{{#2}}
      \caption{{#4}}
      \label{{#3}}
     \end{center}
    \end{figure}
}

\newcommand{\icon}[2]{
  \includegraphics[width={#1}\textwidth]{{#2}}
}



\ProcessOptions\relax

