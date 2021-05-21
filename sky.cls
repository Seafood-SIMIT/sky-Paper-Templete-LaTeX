\ProvidesClass{sky}[Resume class by Seafood]

\NeedsTeXFormat{LaTeX2e}

\LoadClass[a4paper, UTF8]{ctexart}
%页边距
\usepackage{geometry}
\geometry{top=2cm,bottom=2cm,left=3cm,right=2.5cm}
%行距
\usepackage{setspace}
\usepackage{array}
\usepackage{booktabs}
%标题
\usepackage{titling}
\pretitle{\begin{center} \heiti \zihao{2} \vspace{24.88pt}}
\posttitle{\vspace{24.88pt}\end{center}}
\preauthor{\begin{center}
    \fangsong\zihao{4}\linespread{2} \begin{tabular}[t]{c}    }
%\postauthor{\end{tabular}}
\predate{\begin{center}\heiti \zihao{4}\vspace{12cm}}
%\posdate{}


%字体设置
\setmainfont{Times New Roman}
\songti     \zihao{5}
\linespread{1.04}

\renewcommand{\abstractname}{}

%目录标题
\usepackage{titletoc}
\renewcommand\contentsname{目\quad 录}
\renewcommand\tableofcontents{
    \newpage
    \thispagestyle{empty}
    \linespread{1.25}
    \centerline{\zihao{3}\heiti\contentsname}
    \@starttoc{toc}
}

%目录格式
\titlecontents{section}[0em]{\linespread{1.5} \zihao{-3}\songti}
                {\thecontentslabel ~~}{}
                {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[0em]{\linespread{1.5}\zihao{-3}\songti}
                {\thecontentslabel ~~}{}
                {\hspace{.5em}\titlerule*{.}\contentspage}

\titlecontents{subsubsection}[0em]{\linespread{1.5}\zihao{-3}\songti}
                {\thecontentslabel ~~}{}
                {\hspace{.5em}\titlerule*{.}\contentspage}


%段落标题设置
\usepackage{titlesec}
\titleformat{\section}[hang]{\onehalfspacing \zihao{4}\heiti}{\thesection .}{0pt}{\vspace{12pt}}{\vspace{12pt}}

\titleformat{\subsection}[hang]{\onehalfspacing \zihao{5}\heiti}{\thesubsection }{0pt}{}{}

\titleformat{\subsubsection}[hang]{ \onehalfspacing\zihao{5}\heiti}{\thesubsubsection}{0pt}{}{}


%插图和附表清单
\newenvironment{myfigureandtable}[1][插图和附表清单]
{
    \begin{center}
        \zihao{3}\heiti #1
    \end{center}
    \zihao{4}\fangsong }
{
}
%表格
\renewcommand {\thetable} {表\thesection{}.\arabic{table}} 
\renewcommand {\thefigure} {图\thesection{}.\arabic{figure}}

%参考文献
\newenvironment{myreference}[1][参考文献]
{
    {\noindent
    \zihao{4}\heiti #1}
    \zihao{-5}\songti }
{
}
%图表
\usepackage{graphicx}