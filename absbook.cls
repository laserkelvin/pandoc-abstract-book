\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{absbook}[1/8/2021 Kelvin Lee conference abstract book]
% We'll pass any document class options along to the underlying class
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% declare packages to use
\RequirePackage{
    microtype,
    fontspec,
    unicode-math,
    geometry,
    marginnote,
    sidenotes,
    hyperref
    }
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[document]{ragged2e}

\endinput