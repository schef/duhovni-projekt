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
  title = "DOŠLI SMO TE SLAVITI"
 %subtitle = ""
  composer = "Bruno i Vesna Licender"
}
%\paper {
%indent = 0
%}

SCOREVERSE = \relative c' {
	\key e \major
%	\partial 4
%kitica
\mark \markup { \box \bold A }
%\repeat volta 2 {
	h'8 h h h16 cis ~ cis8 e e4 |
	e8 e e e16 fis ~ fis8[ e] e e |
	e2 r2 |
	r1 | \break
	h8 h h h16 cis ~ cis8 e e4 |
	e8 e e e16 fis ~ fis8[ e] e e |
	e2 r2 |
	r1 |
	fis8 fis fis fis16 fis ~ fis8[ fis] fis[ gis] |
	fis8 e e cis16 e ~ e4 r4 |
	fis8[ fis] fis[ e] fis4 gis8 a ~ |
	a2 r2 |
	\bar "||"
}

SCORECHORUS = \relative c' {
	\key e \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #13
%refren
	e'4 e e e |
	cis4 e e dis8 e ~ |
	e1 |
	r1 | \break
	gis4 gis fis e |
	cis4 e e dis8 e ~ |
	e1 |
	r1 |

	\bar "|."	
}

CHORDSVERSE = \chordmode {
\jazzyChords
e1 | cis2:m h | e1 | e1 |
e1 | cis2:m h | e1 | e1 |
h1 | a | h | a |
}

CHORDSCHORUS = \chordmode {
\jazzyChords
e1 | cis2:m h | e1 | e | e | cis2:m h | e1 | e |
}

LYRICSVERSEONE = \lyricmode {
Do -- šli smo te sla -- vi -- ti
I -- me tvo -- je da -- nas u -- zdi -- ći
Pje -- sme će -- mo pje -- va -- ti
Ra -- do -- sno pred to -- bom ple -- sa -- ti

Po -- di -- gni -- mo ru -- ke sa -- da Go -- spo -- du u čast
Za -- pje -- va -- jmo svi u glas
}

LYRICSCHORUS = \lyricmode {
Čast i sla -- va te -- bi pri -- pa -- da
Čast i sla -- va te -- bi pri -- pa -- da
}

LYRICSVERSETWO = \lyricmode {
Vi -- so -- ko si i -- znad sveg
Kralj u Ne -- bu za -- \skip 8 u -- vijek \skip 8
Te -- bi ću se kla -- nja -- ti
U du -- hu i i -- \skip 8 sti -- ni \skip 8
}
\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \CHORDSVERSE }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						%\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\CHORDSVERSE }
	\new Voice { \SCOREVERSE }
	\addlyrics { \LYRICSVERSEONE }
	\addlyrics { \LYRICSVERSETWO } 
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
						\transpose e c \CHORDSCHORUS }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						%\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\CHORDSCHORUS }
	\new Voice { \SCORECHORUS }
	\addlyrics { \LYRICSCHORUS }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
}

     \layout {
       \context {
       \override LyricText #'font-name = #"JohnSans"
         \Score
         \remove "Bar_number_engraver"
       }
     }
