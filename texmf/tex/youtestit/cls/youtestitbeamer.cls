\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{youtestitbeamer}

% use beamer and allow colored beamer
\LoadClass[xcolor=table,10pt,compress]{beamer}

% images are in the epss folder
\def\input@path{{epss/}}

% start in full screen
\hypersetup{pdfpagemode=FullScreen}

%===============================================================================
% Require Packages
%===============================================================================
\RequirePackage{youtestitcolor}
\RequirePackage{system}
\RequirePackage{slide}
\RequirePackage{system}
\RequirePackage{pgf}
\RequirePackage{ifthen}

\renewcommand\normalsize{%
   \@setfontsize\normalsize{8}{14}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize

%===============================================================================
% THEME CUSTOM
%===============================================================================
% based on Frankfurt theme
\usetheme{Frankfurt}

\setbeamercovered{transparent}
\useoutertheme[subsection=false]{smoothbars}
\useinnertheme[shadow=true]{rounded}
\usecolortheme[named=youtestitTopRules]{structure}



\newenvironment{itemizePlus}{
		\def
		\item{
			\par{
				\includegraphics[width=0.015\textwidth]{positif}
			}	
		}
}
{\newline}

\newenvironment{itemizeMinus}{
		\def
		\item{
			\par{
					\includegraphics[width=0.015\textwidth]{negatif}
			}	
		}
}
{\newline}


\newenvironment{enum}{
\begin{enumerate}
  \setlength{\itemsep}{15pt}
  \setlength{\parskip}{2pt}
  \setlength{\parsep}{0pt}
}{\end{enumerate}}




\lstset{ 
    columns=fullflexible,
    basicstyle=\ttfamily\tiny, % 
    numberstyle=\tiny,
    showspaces=false,
    framesep=3pt,
    xleftmargin=3pt,
    xrightmargin=3pt,
    numbersep=8pt,
    showstringspaces=false,
    showtabs=false,
    identifierstyle=\color{colIdentifier}\tiny, % 
    keywordstyle=\color{colKeys}\tiny, % 
    stringstyle=\color{colString}\tiny, % 
    commentstyle=\it\color{colComments}\tiny,
    numbers=left,
    stepnumber=1
} 

\newcommand{\lstsetXml}{
    \lstset{
        framesep=3pt,
        xleftmargin=3pt,
        xrightmargin=3pt,
        numbersep=8pt,
        breaklines=true,
        language=xml,
        frame=single,
        frameround=ffff,
        numbers=left,
        captionpos=b,
        breaklines=true,
        identifierstyle=\color{colIdentifier}\tiny,
        keywordstyle=\color{colKeys}\tiny, 
        stringstyle=\color{colString}\tiny,
        commentstyle=\it\color{colComments}\tiny,
        basicstyle=\ttfamily\color{black}\tiny,
        backgroundcolor=\color{youtestitSubTitle!10}}
}


\newcommand{\lstsetJava}{
    \lstset{
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
        identifierstyle=\color{colIdentifier}\tiny,
        keywordstyle=\color{colKeys}\tiny, 
        stringstyle=\color{colString}\tiny,
        commentstyle=\color{colComments}\tiny,
        basicstyle=\ttfamily\color{black}\tiny,
        backgroundcolor=\color{youtestitSubTitle!10}}
}

\newcommand{\lstsetProperties}{
\lstset{
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
        
        




\newcommand{\lstsetCss}{
    \lstset{
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



\newcommand{\javaType}[2]{{#1}$\mathit{<}${#2}$\mathit{>}$}

\newcommand{\dQuote}[1]{``{#1}''}


\newcommand{\img}[4]{
    \begin{figure}[!h]
     \begin{center}
      \includegraphics[width={#1}\textwidth]{epss/{#2}}
      \vskip-15pt%
      \caption{{#4}}
      \label{{#3}}
     \end{center}
    \end{figure}
}

\newcommand{\icon}[2]{
  \includegraphics[width={#1}\textwidth]{epss/{#2}}
}


\newcommand{\question}{
    \begin{center}
      \includegraphics[width=0.3\textwidth]{question}
    \end{center}
}


%===============================================================================
% BEAMER THEME
%===============================================================================
% allow frame break
\setbeamertemplate{frametitlecontinuation} {\insertcontinuationcount}



%===============================================================================
% PRESENTATION
%===============================================================================


%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%frametitle / section title and subsection title
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
\setbeamertemplate{title page}{

        
		\begin{center}

			\LARGE{
				\textrm{
					\textcolor{youtestitBeamerFirstPageText}{
					    \textbf{\inserttitle}
					}
				}
			}
			\\
		    \begin{it}
		            \textcolor{youtestitBeamerFirstPageAuthorText}{
					    \textrm{
							    \small{
									    \insertauthor
									    \vskip-5pt
							    }
					    }
					}
			\end{it}
  		
		\end{center}

}

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%frametitle / section title and subsection title
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
\setbeamertemplate{frametitle}{
   \color{youtestitBeamerSectionHearderText}

    \hskip-25pt
    \begin{minipage}[b]{.8\linewidth} 
    \normalsize{\textrm{
    			\textbf{
            		\ifx\insertsubsection\@empty
                			\insertsection
            		\else
               				 \insertsubsection
           			 \fi%
       	 		}
        }
    }
    \end{minipage} 
    \par{}
}


\setbeamertemplate{footline}{
    \ifnum\insertframenumber=1
        %
    \else
        \hskip0.98\linewidth
		\begin{minipage}[b]{.3\linewidth} 
			\includegraphics[width=2cm]{youtestit}		
		\end{minipage}
		\vskip+2pt
    \fi
		
}


%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% headline
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
\setbeamercolor{section in head/foot}{fg=youtestitBeamerNavigationText}
\setbeamertemplate{headline}[text line]
{

    \ifnum\insertframenumber=1
        %
    \else
        \vbox{
	        \vskip3pt
	        \beamerline{\insertnavigation{\paperwidth}}
	        \vskip1.5pt
	      }
    \fi

		      
}

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% Blocks
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
\setbeamertemplate{blocks} [rounded] [shadow=false]
\setbeamercolor{block title}        {bg=youtestitBeamerBlockBackgroud,
                                     fg=youtestitBeamerBlockTitleText}
                                     
\setbeamercolor{block body}         {bg=youtestitBeamerBlockBackgroudBody}

\setbeamercolor{block title example}{bg=youtestitBeamerBlockExempleBackgroud,
                                     fg=youtestitBeamerBlockExempleTitleText}
                                     
\setbeamercolor{block body example} {bg=youtestitBeamerBlockExempleBackgroudBody}

\setbeamercolor{block title alerted}{bg=youtestitBeamerBlockAlertBackgroud,
                                     fg=youtestitBeamerBlockAlertTitleText}
                                     
\setbeamercolor{block body alerted} {bg=youtestitBeamerBlockAlertBackgroudBody}


\setbeamertemplate{block begin}
{
  \par\vskip\medskipamount%
  \begin{beamercolorbox}[colsep*=.75ex]{block title}
    \begin{minipage}[b]{\linewidth} 
        \usebeamerfont*{block title}\insertblocktitle%
        \vskip-10pt%
        \hrulefill
    \end{minipage}
    
  \end{beamercolorbox}%
  
  {\parskip0pt\par}%
  
  \ifbeamercolorempty[bg]{block title}
  {}
  {\ifbeamercolorempty[bg]{block body}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body}%
  \begin{beamercolorbox}[colsep*=.75ex,vmode]{block body}%
    \ifbeamercolorempty[bg]{block body}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
  }

  \setbeamertemplate{block end}
  {
  \end{beamercolorbox}
}


%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% ITEMS
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


\setbeamertemplate{itemize items}{
\includegraphics[width=3.5pt]{item}	
}

\setbeamertemplate{enumerate items}{
\begin{minipage}[b]{1pt} 
    \small\insertenumlabel
\end{minipage}
\hskip+1pt%
\includegraphics[width=2pt]{item}	
}


\setbeamertemplate{sections/subsections in toc}[circle]

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% Captation
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
\setbeamertemplate{caption}{
    \tiny\insertcaption
}



%===============================================================================
% OTHER
%===============================================================================
% logo and backbround

\setbeamertemplate{background canvas}{
    \ifnum\insertframenumber=1
        \includegraphics[width=\paperwidth]{beamerBackgroundFirstPage}         
    \else
        \includegraphics[width=\paperwidth]{beamerBackground}      
    \fi
}




\beamertemplatenavigationsymbolsempty

% option minitoc to show the toc at beagin section
\DeclareOption{minitoc}{
\AtBeginSection{
\begin{frame}
    \tableofcontents[currentsection,hideothersubsections]
\end{frame}
}
}



\setbeamertemplate{subsubsection in sidebar}{}


%===============================================================================
% END
%===============================================================================
\ProcessOptions\relax
%\institute{youtestit}
% avoid two warnings
%\let\Tiny=\tiny
