\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{urticle}
\ProcessOptions


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Формат документа                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass
    [12pt, a4paper, oneside, final]{article}
\RequirePackage[T2A,OT1]           {fontenc}
\RequirePackage[utf8]              {inputenc}
\RequirePackage[english, russian]  {babel}
\RequirePackage                    {inputx}

\RequirePackage[ left     = 2.5cm,
                 right    = 1.5cm,
                 top      = 2.0cm,
                 bottom   = 1.25cm,
                 includefoot,
                 footskip = 1.25cm ]{geometry}
\setlength    {\parskip}        { .5em plus .15em minus .08em }
\setlength    {\parindent}      { .0em }
\renewcommand {\baselinestretch}{ 1.07 }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 Математика                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[all,warning]
               {onlyamsmath}
    \AtBeginDocument{\catcode`\$=3}
\RequirePackage{cancel}
\RequirePackage{icomma}
\RequirePackage{mathrsfs}
\RequirePackage{bigints}
\RequirePackage{iunits}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  Графика                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx}
    \graphicspath{{img/}}
\RequirePackage{float}
\RequirePackage{wrapfig}
\RequirePackage{color}
\RequirePackage{tikz}
\RequirePackage{pgfplots}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Нумерация, заголовки и подписи                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyref}
\RequirePackage{fancyhdr}
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{ .0em }
    \renewcommand{\footrulewidth}{ .0em }
    \fancyfoot[C]{\texttt{-~\thepage~-}}
\RequirePackage{secdot}
\RequirePackage{caption}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Таблицы и списки                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{enumitem}
    \setlist{leftmargin =   1cm,
             topsep     =  .0\parskip,
             itemsep    = -.0\parskip,
             resume
            }
\RequirePackage{booktabs}
\RequirePackage{array}
    \renewcommand{\arraystretch}{ 1.20 }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 Определения                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\tw}{\textwidth}
\newcommand{\lw}{\linewidth}
\newcommand{\bs}{\baselineskip}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\newcommand{\dd} [2]{\frac{d #1}{d #2}}
\newcommand{\pdd}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\ddc}[3]{\left( \frac{\partial #1}{\partial #2} \right)_{\! #3}}
\newcommand{\abs}[1]{\left| #1 \right|}

\renewcommand{\iff}     {\quad \Longleftrightarrow \quad}
\newcommand  {\then}    {\quad \Longrightarrow \quad}
\newcommand  {\subst}[1]{\begin{Vmatrix} #1 \end{Vmatrix}}
\newcommand  {\qed}     {\hfill\ensuremath{\square}}

\newcommand  {\const}{\ensuremath{\mathrm{const}}}
\renewcommand{\Re}   {\operatorname{Re}}
\renewcommand{\Im}   {\operatorname{Im}}
\DeclareMathOperator {\Ker}{Ker}
