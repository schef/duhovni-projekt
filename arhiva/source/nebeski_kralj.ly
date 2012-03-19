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
  title = "NEBESKI KRALJ"
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
%\repeat volta 2 { 
	r8 e8 g8[ e] g[ g] g4 |
	r4 h8[ g] g4 fis |
	r8 d'4 d8 d[ c] h[ a] |
	a1 |
	r8 e8 g8[ e] g[ g] g4 |
	r4 h8[ g] g8[ fis] fis4 |
	r8 d'8 d8[ d] d[ c] h[ a] |
	a1 |
	r4 r8 a8 h c4 d8 ~ |
	d1 |
	r4 r8 d8 ~ d8[ c] h d |
	h4. a8 ~ a2 |
	r2 h8 c4 d8 ~ |
	d1 |
	r8 e8 e[ d] e8 e4 d8 |
	e8 d4 d8 ~ d2 |
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
\set Score.currentBarNumber = #17
	r4 e'4 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r2 e8[ e] cis fis |
	e1 |
	r2 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r2 e8[ e] cis fis |
	e1 |
	r4 e4 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r4 r8 e8 e[ e] cis fis |
	e1 |
	r2 e8[ d] cis h ~ |
	h8 cis4. ~ cis2 |
	r4 a8[ a] a[ a] fis h |
	a1 |
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
	e2:m c2 | g d | e:m c | d1 |
	e2:m c | g d | e:m c | d1 |
	a1:m | d | a:m | d |
	a1:m | d | c | d |
}

chordsB = \chordmode {
\jazzyChords
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
}

chordsC = \chordmode {
\jazzyChords
	\skip 2 | g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
On vo -- li gle -- da -- ti mo -- je li -- ce
Bo -- ju mo -- jih o -- či -- ju
I -- skre -- ni o -- smje -- si, ža -- rke mo -- li -- tve
Nje -- go -- vo srce do -- ti -- ču

A sr -- ce zna
Ti si mo -- ja lju -- bav, I -- su -- se
U sno -- ve svo -- je po -- ve -- di me

}

lyricsB = \lyricmode {
Moj Ne -- be -- ski Kralj vla -- dar je sve -- ga
Ze -- mlja i Ne -- bo nek' sla -- ve nje -- ga
Moj Ne -- be -- ski Kralj po -- bje -- đu -- je u -- vijek
Vla -- da u sla -- vi ju -- čer, da -- nas, za -- u -- vijek
}

lyricsC = \lyricmode {
I
}

lyricsATwo = \lyricmode {
Tvo -- ja do -- bro -- ta me na lju -- bav po -- ti -- če
Že -- lim bi -- ti kao ti
Ru -- ka ispru -- že -- na pre -- ma sva -- ko -- me
U -- vijek spre -- mna po -- mo -- ći
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
