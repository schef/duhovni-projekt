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
  title = "NIŠTA OSIM KRVI"
% subtitle = "()"
  composer = "unknown"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key d \major
	\partial 8
\mark \markup { \box \bold A }
\repeat volta 2 { 
	d16 e |
	fis2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis2 a8 a16 h ~ h g8 fis16 ~ |
	fis2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis2 a8 g16 fis ~ fis g8 e16 ~ |
	e2 a8 g16 fis ~ fis g8 g16 ~ |
	g2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis1 |
}
	\alternative {
		{\set Timing.measurePosition = #(ly:make-moment -7 8) r2 r4 r8 }
		{\set Timing.measurePosition = #(ly:make-moment -4 4 ) r1}
	}
	\bar "||"
}

scoreB = \relative c' {
	\key g \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #10
	e'8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	\times 2/3 {e4 fis fis( ~} fis2 |
	d1 )|
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	\times 2/3 {e4 d d( ~} d2 |
	d1 )|

	\bar "|."	
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
	\skip 8
	d1 | h:m | d | h:m |
	a | g | d |
}

chordsB = \chordmode {
\jazzyChords
	d1 | d | h:m | h:m | 
	a | g | d | d |
	d | d | h:m | h:m |
	a | g | d | a2 g2 |
}

chordsC = \chordmode {
\jazzyChords
	\skip 2 | g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
I
\skip 8
}

lyricsB = \lyricmode {
I
}

lyricsC = \lyricmode {
I
}

lyricsATwo = \lyricmode {
O
}
\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose d c \chordsA }
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
						\transpose d c \chordsB }
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
%						\transpose d c \chordsC }
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
