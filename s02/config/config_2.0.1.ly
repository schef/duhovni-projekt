%%%%%%%%%%%%
%% CONFIG %%-------------------------------------------------------------------------
%%%%%%%%%%%%

#(set-default-paper-size "a4")	%format papira

%%%%%%%%%%%%%%%%
%% STAFF SIZE %% --------------------------------------------------------------------
%%%%%%%%%%%%%%%%

%myStaffSize = #16
%#(set-global-staff-size myStaffSize)

%%%%%%%%%%%%%%%%%%%%%%%%%
%% USER DEF. FUNCTIONS %%------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%

%BREATHEMOJ
\layout {
  \context {
    \Voice
    \override BreathingSign #'font-name = #"Helvetica"			%font za zarez
    \override BreathingSign #'font-size = #8				%velicina fonta za zarez
    \override BreathingSign #'text = \markup { \raise #0.2 "," }	%stavi zarez
    \override BreathingSign #'color = #blue				%boja zareza
  }

  \context {
    \Score markFormatter = #format-mark-box-numbers			%box oko broja
    %\Score markFormatter = #format-mark-circle-numbers			%krug oko broja
    \override RehearsalMark #'self-alignment-X = #CENTER		%pozicija broja na zarez
    \override RehearsalMark #'color = #blue				%boja rehearsal marka
  }
}

breathemoj = {
  \override Score.RehearsalMark #'extra-spacing-width = #'(0 . 0)
  \override Score.RehearsalMark #'extra-spacing-height = #'(-inf.0 . +inf.0) 
  \once \override Score.RehearsalMark #'X-offset = #0.05
  \once \override Score.RehearsalMark #'Y-offset = #-1.5
  \once \override Score.RehearsalMark #'outside-staff-priority = #1 
  %\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
  \mark \default
  \breathe
}

%LEFT
left = { \once \override LyricText #'X-offset = #-2.8 }                 % \left "S to" -- bom                                                                                           %snipet 737

%MARK DEFAULT I LYRICS FONT SIZE
\layout { 
  \context {
    \Score markFormatter = #format-mark-box-numbers
    %\Score markFormatter = #format-mark-circle-numbers
    \override RehearsalMark #'self-alignment-X = #CENTER
    \override RehearsalMark #'color = #blue
    %\override StaffSymbol #'thickness = #0.5
    %\override Stem #'thickness = #2.5
    %\override Stem #'thickness = #10
    %\override StaffSymbol #'ledger-line-thickness = #'(0.2 . 0.2)
  }
  \context {
    \Lyrics
    \override LyricText #'font-size = #-1
    %\override LyricText #'font-family =#'
  } 
}

%%%%%%%%%%%%
%% HEADER %% ------------------------------------------------------------------------
%%%%%%%%%%%%


\header {
  title = \markup {  \override #'(font-name . "JohnSans Medium Pro Bold") \title }
  composer = \markup {  \override #'(font-name . "JohnSans Medium Pro") \composer }
  subtitle = \markup { \sans \subtitle }
  arranger = \markup {  \override #'(font-name . "JohnSans Medium Pro") \arranger }
  %copyright = \markup { \sans \copyright }
  copyright = \markup { \tiny \sans "zvanstefan@gmail.com (http://iskreno.hr/)" }
  tagline = \markup { \tiny \sans {
    \simple #(strftime "%d/%m/%Y" (localtime (current-time)))
    \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
                      }
  }
}

myStaffSize = #20
#(set-global-staff-size myStaffSize)
\paper {
  #(define fonts (make-pango-font-tree "JohnSans Text Pro" "Lilypond JohnSans White Pro" "Lilypond JohnSans Medium Pro" (/ myStaffSize 20)))
  markup-system-spacing #'padding = #7
  %system-system-spacing #'padding = #10
  indent = 0
  %paper-width = 138 \mm
  %paper-height = 214 \mm
  top-markup-spacing #'padding = #4
  markup-system-spacing #'padding = #5
  markup-system-spacing #'stretchability = #5
  score-system-spacing #'padding = #5
  last-bottom-spacing #'padding = #5
  score-markup-spacing #'padding = #5
  top-system-spacing #'padding = #5
  
  markup-markup-spacing #'padding = #3
  
  system-system-spacing #'padding = #2
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
  
  %size A4 which is 210 × 297 mm
  left-margin = 20 \mm %10mm
  line-width = 170 \mm %paper-width - 20mm
  bottom-margin = 12 \mm
}
