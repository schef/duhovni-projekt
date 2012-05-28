%#(set-default-paper-size "a4")
%#(set-global-staff-size 10)

\layout { 
  \context {
    \Voice
    \override BreathingSign #'font-name = #"Helvetica"
    \override BreathingSign #'font-size = #8
    \override BreathingSign #'text = #(markup (#:raise 0.2 ","))	
	%\Score markFormatter = #format-mark-box-letters
	}
	}


\layout { 
  \context {
	\Score markFormatter = #format-mark-box-letters
	}
	}

\header {
subtitle = \markup { \sans \subtitle }
copyright = \markup { \sans \copyright }
tagline = "" 
}

myStaffSize = #16
#(set-global-staff-size myStaffSize)
\paper {
#(define fonts (make-pango-font-tree "JohnSans Medium Pro" "Lilypond JohnSans White Pro" "Lilypond JohnSans Medium Pro" (/ myStaffSize 20)))
markup-system-spacing #'padding = #7
%system-system-spacing #'padding = #10
indent = 0
paper-width = 138 \mm
paper-height = 214 \mm
top-markup-spacing #'padding = #2
markup-system-spacing #'padding = #5
markup-system-spacing #'stretchability = #5
score-system-spacing #'padding = #5
last-bottom-spacing #'padding = #5
score-markup-spacing #'padding = #5
top-system-spacing #'padding = #17.5

markup-markup-spacing #'padding = #3

system-system-spacing #'padding = #1
%system-system-spacing #'minimum-distance = #1
system-system-spacing #'stretchability = #0
score-system-spacing #'stretchability = #5
%first-page-number = #16
%print-first-page-number = ##t
%auto-first-page-number = ##t
%ragged-last-bottom=##t
%annotate-spacing = ##t

%oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 \brojPjesme }
%oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 \copyright \override #'(font-name . "JohnSans Medium Pro") \brojStraniceLijevo}}}
%evenFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") \brojStraniceDesno }}
}
