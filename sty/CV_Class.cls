%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MINIMALIST ACADEMIC CV CLASS 
% CREATED BY SHOMAK CHAKRABARTI, PENN STATE UNIVERSITY
% LAST EDITED ON JULY 20, 2020

%TO DO's: 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}
\ProvidesClass{CV_Class}[Minimalist Academic CV by Shomak Chakrabarti, updated: July 20, 2020]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PACKAGES FOR PAGE STYLES

\RequirePackage[left=0.5 in,right=0.5 in,top=1in,bottom=1in]{geometry} %Change the margins of the CV
\RequirePackage{fancyhdr} %required to format the footer (date, pagenumber) and header
\RequirePackage{lastpage} %reuqired for \pageref
\RequirePackage{xcolor} %\required to get the steelblue4 HTML color defined in the next line
\definecolor{steelblue4}{HTML}{36648b}

%FANCY TIDBITS
\RequirePackage{titlesec}  %required for \titleformat
\RequirePackage[misc]{ifsym} %required to get the \Letter and \faExternalLink symbols in the titlepage
\RequirePackage{hyperref} %requried to get clickable links
\hypersetup{colorlinks = true, linkcolor = steelblue4, filecolor = steelblue4, urlcolor = steelblue4} %sets the color of the links

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FONT PACKAGES USED IN THE CV

\RequirePackage[T1]{fontenc} %basic font family 1
\RequirePackage[utf8]{inputenc} %basic font family 2
\RequirePackage{fontawesome} %not required, but adds flexibility to choice of package
\RequirePackage{microtype} %package to provide good typography - used for letterspacing command \lsstyle
\RequirePackage[lighttext,noamsmath]{kpfonts} %main font used in the CV
\RequirePackage{inconsolata,bbm}	
\RequirePackage[bb=boondox]{mathalfa} % math fonts - not really required, but no hardm keeping it

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PAGE STYLE - INCLUDE HEADERS AND FOOTERS

\pagestyle{fancy}
\fancyhead{} % clear all header fields
\renewcommand{\headrulewidth}{0pt} % no line in header area
\fancyfoot{} % clear all footer fields
\fancyfoot[R]{{\small\thepage/\pageref{LastPage}} }  % page number format - i/(lastpage)

\titleformat{\section}{\large\lsstyle\scshape}{}{0em}{}[]  %Formatting the Sections, use \titlerule in the last box [] to add a horizontal line for each section
\titleformat{\subsection}{\large\scshape\raggedright}{}{0em}{}[] %Formatting the Subsections


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NEW COMMANDS USED FOR CV ENTRIES

\newcommand\footerdate[1]{\fancyfoot[L]{{\lsstyle \small #1}}}  %command to enter DATE-YEAR in the footer of every page

\newcommand{\name}[1]{\centerline{\fontsize{26pt}{26pt}\selectfont{\texttt{#1}}}\vspace{7mm}} %command to enter the name of the person - main title of CV

\newcommand\contact[2]{\centerline{\makebox[0pt][c]{{\small \hspace{1.25mm}\href{mailto:#1}{\textcolor{steelblue4}{\Letter} #1} \hspace{2mm} \textperiodcentered \hspace{2mm} \hspace{1.25mm} \href{http://#2}{\textcolor{steelblue4}{\faExternalLink} #2}}}}\hrulefill} %command to create the clickable links for email and webpage. You can add more tabs like ph number by adding more entries.

\newcommand\employment[5]{\textit{#1}, #2, #3. \hfill #4-#5}

\newcommand\education[5]{\textit{#1}, \textbf{\textsc{#2}}, #3. \hfill #4-#5}

\newcommand\rawork[4]{\textit{#1}, #2. \hfill #3-#4}

\newcommand\tawork[4]{\textit{#1} \textsc{\textbf{#2}}. \hfill #3-#4}

\newcommand\honours[3]{\textit{#1}, #2. \hfill #3}

\newcommand\paper[3]{\textbf{#1} [\textsc{#2}] \textit{#3}.}

\newcommand\presentation[2]{\textit{#1} \hfill #2}

\newcommand\publication[2]{{\small \textsc{Journal: }\textit{#1}; \hspace{2mm} [\href{http://#2}{Click Here}]}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%thanks due to Denis Shiskin for being the inspiration for the format
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%