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
  title = "VOLIM TE"
% subtitle = "()"
  composer = "Marija Lacković"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key a \major
%	\partial 4
\mark \markup { \box \bold A }
%\repeat volta 2 { 
	r4 e'8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 cis2 |
	h1 |
	r4 e8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 e2 |
	\set Timing.measurePosition = #(ly:make-moment -3 4) e2. |
%}
%	\alternative {
%		{dis1}
%		{\set Timing.measurePosition = #(ly:make-moment -3 4) dis2.}
%	}
	\bar "||"
}

scoreB = \relative c' {
	\key a \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #16
	\partial 4
	gis''8 a ~ |
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 gis2 |
	e1 |
	fis2 a2 |
	gis2. gis8 a |
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 h |
	a1 |
	fis2 a |
	gis1 |
	\bar "||"	
}

scoreC = \relative c' {
	\key a \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #32
	a''2 gis |
	e1 |
	a2 gis |
	e1 |
	a2 gis |
	e1 |
	fis2 a |
	gis1 |

	\bar ":|"	
}

chordsA = \chordmode {
\jazzyChords
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e |
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e2. |
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |

}

chordsC = \chordmode {
\jazzyChords
	a1 | a | e/gis | e/gis |
	fis1:m | d | h:m | e |
}

lyricsAOne = \lyricmode {
Sla -- va, sla -- va te -- bi, O -- če
Stvo -- ri -- te -- lju sve -- mi -- ra i ze -- mlje sve, ze -- mlje sve
Sla -- va, sla -- va te -- bi, O -- če
Što to -- li -- ko lju -- bi -- o si cije -- li svijet, cije -- li svijet
}

lyricsB = \lyricmode {
Pje -- vam, u vi -- si -- nu pru -- žam ru -- ke
Po -- di -- žem svoj glas da ču -- ju svi da si naj -- ve -- ći
Ple -- šem, jer me ra -- dost i -- spu -- nja -- va
Srce vje -- ru -- je i je -- zik pri -- zna -- je: Vo -- lim te
}

lyricsC = \lyricmode {
I
}

lyricsATwo = \lyricmode {
Sla -- va, sla -- va te -- bi, Kri -- ste
Za sve što u -- či -- ni -- o si za me -- ne, za me -- ne
Sla -- va, sla -- va te -- bi, Kri -- ste
Što u te -- bi i -- mam ži -- vot, i -- mam sve, i -- mam sve
}
\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose a c \chordsA }
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
						\transpose a c \chordsB }
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
						\transpose a c \chordsC }
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
