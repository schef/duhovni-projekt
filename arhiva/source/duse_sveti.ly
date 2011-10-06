\version "2.14.1"

#(set-default-paper-size "a4")
%#(set-global-staff-size 10)

\paper{
between-system-spacing = 200\mm
between-system-padding = 200\mm
%ragged-last-bottom=##f
%annotate-spacing = ##t
}
\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title = "DUŠE SVETI"
% subtitle = "()"
  composer = "Bruno i Vesna Licender"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key g \major
%	\partial 4
\mark \markup { \box \bold A }
\repeat volta 2 { 
	d'8 d16 d ~ d d8. e8 d16 c ~ c h8 d16 ~ |
	d1 |
	e8 e16 e ~ e g8. fis8 g16 a ~ a fis8 d16 ~ |
	d2 ~ d8.[ d16] d d8 e16 ~ |
	e8. e16 e e8 fis16 ~ fis4 fis16 fis fis fis ~ |
	fis4 fis16 g a g ~ g4 g8 a16 h ~ |
	h g8. ~ g4 a8 g16 fis16 fis a8 g16 ~ |
}
	\alternative {
		{g1}
		{r2 r4 \set Timing.measurePosition = #(ly:make-moment -3 4)}
	}
	\bar "||"
}

scoreB = \relative c' {
	\key g \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #9
	\partial 4
	g''8 a16 h ~ |
	h g8. ~ g2 g8 a16 h ~ |
	h g8. ~ g2 g8 a16 h ~ |
	h16 g8. ~ g4 a8[ g16 fis] ~ fis a8 g16 ~ |
	\set Timing.measurePosition = #(ly:make-moment -3 4) g2. |
	\bar ":|"	
}

scoreC = \relative c' {
	\key g \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #19
	\partial 2
	h'4 d |
	e d8 d ~ d h4 h8 ~ | 
	h a g2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h8 a ~ a2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h a g4 \times 2/3 {h a g} |
	a4 g8 g ~ g2 |
	r1 |
	\bar "|."	
}

chordsA = \chordmode {
\jazzyChords
	g1 | g | c2 d2 | g1 |
	c2 d2 | h2:m e2:m | c2 d2 | g1 |
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
	c1 | e:m | c2 d2 | g |
}

chordsC = \chordmode {
\jazzyChords
	\skip 2 | g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
Du -- še Sve -- ti, do -- bro -- do -- šao
Du -- še Sve -- ti, do -- bro -- do -- šao
U o -- vaj hram, u o -- vaj dom
O -- vdje nek’ sve bu -- de po tvom
Du -- še Sve -- ti, do -- bro -- do -- šao
}

lyricsB = \lyricmode {
Du -- še Sve -- ti, Du -- še Sve -- ti
Du -- še Sve -- ti, mi te tre -- ba -- mo
}

lyricsC = \lyricmode {


}

lyricsATwo = \lyricmode {
Du -- še Sve -- ti, mi te tre -- ba -- mo
Du -- še Sve -- ti, mi te tre --- ba -- mo
U o -- ve da -- ne, go -- di -- ne
Za za -- dnju že -- tvu spre -- mlje -- ne
Du -- še Sve -- ti, mi te tre -- ba -- mo
}
\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose g c \chordsA }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsA }
	\new Voice { \scoreA }
	\addlyrics { \lyricsAOne }
	\addlyrics { \lyricsATwo } 
	>>
	%\midi {}
}
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose g c \chordsB }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsB }
	\new Voice { \scoreB }
	\addlyrics { \lyricsB }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
%\score {
%	<<
%	\new ChordNames {	\italianChords
%						\override ChordName #'font-size = #0
%						\override ChordName #'font-shape = #'italic
%						\set chordChanges = ##t
%						\transpose g c \chordsC }
%	\new ChordNames {   \semiGermanChords
%						\override ChordName #'font-size = #3
%						\override ChordName #'font-name = #"FreeSerif"
%						\set chordChanges = ##t
%						\chordsC }
%	\new Voice { \scoreC }
%	\addlyrics { \lyricsC }
%	>>
%	\layout {\context {\Staff \remove "Time_signature_engraver" }}
%	%\midi {}
%}
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
