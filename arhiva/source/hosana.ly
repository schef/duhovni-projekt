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
  title = "HOSANA"
% subtitle = "()"
  composer = "Brooke Fraser"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key e \major
%	\partial 4
\mark \markup { \box \bold A }
\repeat volta 2 { 
	r8 e'8 e[ cis] e4 fis8 a ~ |
	a gis ~ gis2. |
	e8[ e] e[ cis] e4 fis8 gis ~ |
	gis2 \times 2/3 {a4 gis cis, ~} |
	cis4. cis8 \times 2/3 {a'4 gis dis ~} |
}
	\alternative {
		{dis1}
		{\set Timing.measurePosition = #(ly:make-moment -3 4) dis2.}
	}
	\bar "||"
}

scoreB = \relative c' {
	\key e \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #8
	\partial 4
	h''8 h ~ |
	h4. cis8 ~ cis4 gis8 fis ~ |
	fis4. gis8 ~ gis4. h8 |
	h[ a] a[ gis] gis4 fis ~ |
	fis2. h8 h ~ |
	h4. cis8 ~ cis4 gis8 fis ~ |
	fis4. gis8 ~ gis4. gis8 |
	a8[ gis] fis[ e] fis4 e ~|
	e1 |
	\bar "|."	
}

scoreC = \relative c' {
	\key e \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #16
	\partial 8
	h''8 |
	cis8[ h] h[ a] a gis4 fis8 ~ |
	fis1 |
	h8[ a] a[ gis] gis[ fis] e fis |
	a8 gis4  cis,8 ~ cis2 |
	cis'8[ h] h[ a] a8 gis4 fis8 ~ |
	fis4 fis8 e h'4 gis |
	gis1 |
	r1 |
	cis8[ h] h([ a]) a gis4 fis8 ~ |
	fis1 |
	h8[ a] a[ gis] gis[ fis] e fis |
	a8 gis4  cis,8 ~ cis2 |
	cis'8[ h] h[ a] a8 gis4 fis8 ~ |
	fis4. e8 gis4 fis( |
	e1) |
	r1 |
	\bar "|."	
}

chordsA = \chordmode {
\jazzyChords
	e1*2 | cis1*2:m |
	fis1:m | h1 |
	h2. |
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
	e1/gis | h2 cis:m | a cis:m | h1 |
	e2/cis a2 | h2 cis:m | a2 h2 | e1 |
}

chordsC = \chordmode {
\jazzyChords
	\skip 8
	a1 | h | e | cis:m | a |
	h | cis:m | cis:m |
	a1 | h | e | cis:m | a |
	h | a | e | 

}

lyricsAOne = \lyricmode {
	\set stanza = #"1. "
	Ja vi -- dim kra -- lja sla -- ve
	Si -- la -- zi na o -- bla -- ku
	Ze -- mlja sva po -- dr -- hta -- va
	}

lyricsB = \lyricmode {
	Ho -- sa -- na, ho -- sa -- na
	Ho -- sa -- na u vi -- si -- ni
	Ho -- sa -- na, ho -- sa -- na
	Ho -- sa -- na u vi -- si -- ni
	}

lyricsC = \lyricmode {
	I -- zlije -- či me i o -- či -- sti
	O -- či mi za ne -- vi -- đe -- no o -- tvo -- ri
	Na -- u -- či me lju -- bi -- ti ka -- ko lju -- biš ti
	Daj da tvoj bu -- dem sav
	Sve što je -- sam ra -- di tvo -- ga Kra -- ljev -- stva
	Dok sa ze -- mlje u -- la -- zim u vje -- čnost
	}

lyricsATwo = \lyricmode {
Ja vi -- dim lju -- bav, mi -- lost
Pe -- re na -- še grije -- he sve
Pje -- va -- mo, mi pje -- va -- mo
	}

lyricsAThree = \lyricmode {
	\set stanza = #"2. "
	Ja vi -- dim po -- ko -- lje -- nje
	Mje -- sto tra -- ži, u -- sta -- je
	Po -- tpu -- no \skip 8 pre -- da -- no
	}

lyricsAFour = \lyricmode {
	Ja vi -- dim o -- bra -- će -- nje
	Do -- la -- zi dok mo -- li -- mo
	Pa -- da -- mo na ko -- lje -- na
	}

\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##f
						\transpose e c \chordsA }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##f
						\chordsA }
	\new Voice { \scoreA }
	\addlyrics { \lyricsAOne }
	\addlyrics { \lyricsATwo } 
	\addlyrics { \lyricsAThree } 
	\addlyrics { \lyricsAFour } 
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
						\transpose e c \chordsB }
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
						\transpose e c \chordsC }
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
