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
  title = "OTVORI OČI MOG SRCA"
% subtitle = "()"
  composer = "Paul Baloche"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key g \major
%	\partial 4
\mark \markup { \box \bold A }
\repeat volta 2 { 
	h'8 d d d4 h8 d8 d ~ |
	d h ~ h4 r2 |
	h8 d d d4 h8 e d ~ |
	d2 \times 2/3 {h4 a g} |
	a4 g8 g ~ g2 |
	r2 \times 2/3 {h4 a g} |
	a g8 g ~ g2 |
	
}
	\alternative {
		{r1}
		{r2 \set Timing.measurePosition = #(ly:make-moment -2 4)}
	}
	\bar "||"
}

scoreB = \relative c' {
	\key g \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #10
	\partial 2
	h'4 d |
	d h8 d8 ~ d[ e] ~ e[ e] ~ | 
	e2 r2 |
	e8[ d] d[ h] e[ d] h[ h] ~ |
	h8 a ~ a4 r2 |
	h8 d4 h8 d[ h] d[ e] ~ |
	e4. h8 h[ h] d4 |
	e d8[ d] ~ d h4 h8 ~ |
	h[ a] ~ a2. |
	r1 |
	\bar "||"	
}

scoreC = \relative c' {
	\key g \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #19
	e'4 d8 d ~ d h4 h8 ~ | 
	h a( g2.) |
	e'4 d8 d ~ d h4 h8 ~ |
	h8 a ~ a2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h a( g4) \times 2/3 {h a g} |
	a4 g8 g ~ g2 |
	r1 |
	\bar "|."	
}

chordsA = \chordmode {
\jazzyChords
	g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

chordsB = \chordmode {
\jazzyChords
	\skip 2 | d1 | e:m | c | d | 
	d | e:m | a:m | d | d |
}

chordsC = \chordmode {
\jazzyChords
	g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
O -- tvo -- ri o -- či mog sr -- ca
O -- tvo -- ri, Go -- spo -- de, ti
Že -- lim te vi -- dje -- ti
Že -- lim te vi -- dje -- ti
}

lyricsB = \lyricmode {
Vi -- djet te -- be i -- znad svih
O -- ba -- sja -- nog svje -- tlo -- šću sla -- ve
Ti i -- zlij lju -- bav na nas
Dok pje -- va -- mo: sve -- ti, sve -- ti, sve -- ti
}

lyricsC = \lyricmode {
Sve -- ti, sve -- ti, sve -- ti
Sve -- ti, sve -- ti, sve -- ti
Sve -- ti, sve -- ti, sve -- ti
Že -- lim te vi -- dje -- ti
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
						\transpose g c \chordsA }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsA }
	\new Voice { \scoreA }
	\addlyrics { \lyricsAOne }
%	\addlyrics { \lyricsATwo } 
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
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose g c \chordsC }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsC }
	\new Voice { \scoreC }
	\addlyrics { \lyricsC }
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
