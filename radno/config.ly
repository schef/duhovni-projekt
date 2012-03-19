%ovo je config.ly za sve variable u notama. bez tog file-a nebude htelo compalirati.

%variable globalnog fonta
#(define globalFont "JohnSans Medium Pro" )

%variable stupnjeva
#(define fontStupnjevaVelicina 0) 
#(define fontStupnjeva "LilypondJohnSansWhitePro") 

%variable akordi
#(define fontAkordiVelicina 3) 
#(define fontAkordi "LilypondJohnSansMediumPro") 

%velicina papira
#(define mm 1.0)
#(set-global-staff-size 16)

\include "jazzChords.ly"
\include "romanChords.ly"

\paper {
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
%system-system-spacing #'space = #1
print-page-number = ##f
%first-page-number = #16
%print-first-page-number = ##t
%auto-first-page-number = ##t
%ragged-last-bottom=##t
%annotate-spacing = ##t

oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 \brojPjesme }
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 \copyright \override #'(font-name . "JohnSans Medium Pro") \brojStraniceLijevo}}}
evenFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") \brojStraniceDesno }}

}

\header {
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 \naslov }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 \autor }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 \mjera }
}

%definicije za unutar notnog zapisa

#(define-markup-command (abox layout props text) (markup?)
  "Draw a box around text."
    (interpret-markup layout props
        (markup #:box
	        #:override '(font-name . "JohnSans Medium Pro") text)))

%definicije unutar knjige

romanMinorChords = {
  \override ChordName #'font-size = #fontStupnjevaVelicina
  \override ChordName #'font-name = #fontStupnjeva
  \set chordRootNamer = #my-chord-name->minor-markup
  \set chordChanges = ##t
  \romanChords
%  \transpose \tonalitet c
}

romanMajorChords = {
  \override ChordName #'font-size = #fontStupnjevaVelicina
  \override ChordName #'font-name = #fontStupnjeva
  \set chordRootNamer = #my-chord-name->major-markup
  \set chordChanges = ##t
  \romanChords
%  \transpose \tonalitet c
}

standardChords = {
  \override ChordName #'font-size = #fontAkordiVelicina
  \override ChordName #'font-name = #fontAkordi
  \set chordChanges = ##t
  \jazzyChords
}

voiceFont = {
  \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
}

lyricsFont = {
  \override LyricText #'font-name = #"JohnSans Text Pro"
}

lyricsExtFont = {
  \override LyricText #'font-name = #"JohnSans White Pro"
}
