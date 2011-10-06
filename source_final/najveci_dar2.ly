\version "2.14.2"

#(set-default-paper-size "biblija")
#(set-global-staff-size 16)

\paper {
indent = 0
top-markup-spacing #'padding = #2
markup-system-spacing #'padding = #5
markup-system-spacing #'stretchability = #5
score-system-spacing #'padding = #5
score-system-spacing #'stretchability = #5
last-bottom-spacing #'padding = #5
score-markup-spacing #'padding = #5
top-system-spacing #'padding = #19.1

markup-markup-spacing #'padding = #3

system-system-spacing #'padding = #1
%system-system-spacing #'minimum-distance = #1
system-system-spacing #'stretchability = #0
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Greatest Gift\" by Matt Redman & Peter Wilson, Copyright © 2006" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
print-page-number = ##f
%first-page-number = #16
%print-first-page-number = ##t
%auto-first-page-number = ##t
ragged-last-bottom=##t
%annotate-spacing = ##t
}

\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "NAJVEĆI DAR" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MATT REDMAN I PETER WILSON" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}

scoreA = \relative c' {
	\key d \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\repeat volta 2 { 
	%}
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	h4 a d,2 |
	h'4 a d, ~ d8. d16 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	h4 a d,2 |
	h'4 a d,4. a'8 |
	d8[ d] cis[ cis] a4. fis8 |
	g8 a a4 ~ a4. a8 |
	d8[ d] cis[ cis] a4. fis8 |
	\time 2/4 g8 a a4 ~ |
	\override Staff.TimeSignature #'style = #'()
	\time 4/4 \set Timing.measurePosition = #(ly:make-moment -3 4) a2. | 
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "" \break
}

scoreB = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #14
	\partial 4
	a'16 h d8 ~ |
	d4 e d a |
	d8 cis4 d8( ~ d e4.) |
	e8[ d] cis cis ~ cis2 |
	es8[ d] cis cis ~ cis4 a16 h d8 ~ |
	d4 e d a |
	d8 cis4 d8 ~ d e4 e8 |
	e8[ d] cis cis ~ cis2 |
	es8[ d] cis cis ~ cis8 d4 cis8 ~ |
	cis1 |
	\bar "||" \break
}

scoreC = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #23
	%\partial 2
	r4 r8 d'16 e fis8 e16 d ~ d16 e8 fis16 ~ |
	fis4 r8 d16 e16 fis8 e16 d ~ d16 e8 fis16 ~ |
	fis4 r8 d16 e16 fis8 e16 d ~ d16 e8 d16 ~ |
	d1 |
	\bar "|." \break
}

chordsA = \chordmode {
\jazzyChords
%\skip 8
	d1 | a/cis | g | e:m |
	d1 | a/cis | e:m | g |
	e2:m d2/fis | g1 | e2:m d2/fis | c | a2. |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
	d1 | e | g | g:m |
	d1 | e | g | g:m | d |
}

chordsC = \chordmode {
\jazzyChords
	g1:m | h:m | fis:m | g |
}

lyricsAOne = \lyricmode {
Ne -- ma vi -- še po -- su -- de
sve su kriv -- nje ne -- sta -- le
Sad sam čist
sad sam čist
U me -- ni snaž -- no dje -- lu -- ješ
Lo -- miš lan -- ce kriv -- nju sram
Po -- sta -- jem slo -- bo -- dan
Pod križ ih do -- no -- sim
i o -- stav -- ljam
O -- bu -- zet mi -- lo -- šću o -- slo -- bo -- đen
}

lyricsB = \lyricmode {
To je tvoj spa -- se -- nja ve -- lik dar
Pro -- ži -- ma me 
Pro -- ži -- ma me 
To je taj ži -- vo -- ta o -- kus "s ne" -- ba
Do -- bro -- ta mi se tvo -- ja o -- bja -- vi -- la 
}

lyricsC = \lyricmode {
O -- vo naj -- ve -- ći je dar
O -- vo naj -- ve -- ći je dar
O -- vo naj -- ve -- ći je dar
}

lyricsATwo = \lyricmode {

}

\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose d c \chordsA }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose d h
						\chordsA }
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose d h,
			\scoreA
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAOne }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsATwo } 
	>>
	%\midi {}
}

\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose d c \chordsB }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose d h
						\chordsB }
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose d h,
			\scoreB
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsB }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
\pageBreak
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose d c \chordsC }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose d h
						\chordsC }
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose d h,
			\scoreC
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsC }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
}



     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
