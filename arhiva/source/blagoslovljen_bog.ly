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
  title = "BLAGOSLOVLJEN BOG"
% subtitle = "()"
  composer = "Matt i Beth Redman"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key d \major
%	\partial 4
\mark \markup { \box \bold A }
%\repeat volta 2 {
	r4 r8 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a2 |
	fis8[ e] e d ~ d2 |
	r1 |
	r4 r8 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a2 |
	fis8[ e] e d ~ d2 |
	r1 |
	r4 d'8 d d4 a4 |
	a h cis d |
	r4 e4 e d |
	h1 |
	r4 d8 d d4 a4 |
	a h cis d |
	r4 e4 e d |
	\set Timing.measurePosition = #(ly:make-moment -2 4) h2 |
	

%}
%	\alternative {
%		{dis1}
%		{\set Timing.measurePosition = #(ly:make-moment -3 4) dis2.}
%	}
	\bar "||"
}

scoreB = \relative c' {
	\key d \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #25
	\partial 2
	fis'8[ e] e d |
	d4. d8 ~ d e4 e8 ~ |
	e2 fis8[ e] e d |
	d1 ~ |
	d2 fis8[ e] e d |
	d4. d8 ~ d e4 e8 ~ |
	e2 fis8[ e] e d |
	fis4( g8) fis ~ fis e4 d8 ~ |
	d1 |
	\bar "||"	
}

scoreC = \relative c' {
	\key d \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #33
	fis'4 fis fis4. e8 |
	e2 r2 |
	fis4 fis fis4. e8 |
	e8( d4.) r4 r8 d8 |
	fis4 fis fis4. e8 |
	e2 r4 r8 d8 |
	fis4 g fis4. e8 |
	e8( d4.) r2 |
	\bar "|."	
}

chordsA = \chordmode {
\jazzyChords
	d1 | a | h:m | g |
	d1 | a | g | g |
	d1 | a | h:m | g |
	d1 | a | g | g |
	d1 | a | h:m | g |
	d1/fis | a | h:m | g2 |
}

chordsB = \chordmode {
\jazzyChords
	\skip 2
	d1 | a | h:m | g |
	d1 | a | h2:m a2 | g1 |
}

chordsC = \chordmode {
\jazzyChords
	d1 | a | h:m | g |
	d1 | a | h:m | g |
}

lyricsAOne = \lyricmode {
Bla -- go -- slo -- vljen Bog u ze -- mlji pu -- noj o -- bi -- lja
Kad i -- zlije -- va svoj bla -- go -- slov, bla -- go -- slo -- vljen Bog
Bla -- go -- slo -- vljen Bog kad na -- đem se u pu -- sti -- nji
I di -- vlji -- nom ho -- dam sam, bla -- go -- slo -- vljen Bog

Za sve bla -- go -- slo -- ve tvo -- je pro -- sla -- vljam te
Ka -- da ta -- ma sve za -- mra -- či, tad mo -- gu reć
}

lyricsB = \lyricmode {
Bla -- go -- slo -- vljen Bog, Go -- spod moj
Bla -- go -- slo -- vljen Bog
Bla -- go -- slo -- vljen Bog, Go -- spod moj
Bla -- go -- slo -- vljen Bog, Go -- spod moj
}

lyricsC = \lyricmode {
Ti nam da -- ješ sve
Ti nam u -- zi -- maš
Svim srcem pje -- vam ti
Da, bla -- go -- slo -- vljen Bog
}

lyricsATwo = \lyricmode {
Bla -- go -- slo -- vljen Bog ka -- da su -- nce gri -- je me
I sve ka -- ko tre -- ba je, bla -- go -- slo -- vljen Bog
Bla -- go -- slo -- vljen Bog na pu -- tu pu -- nom ne -- vo -- lja
Kad bol pri -- ti -- sne o -- da -- svud, bla -- go -- slo -- vljen Bog
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
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose d c \chordsC }
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
