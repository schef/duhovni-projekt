\version "2.14.2"

#(set-default-paper-size "biblija")
#(set-global-staff-size 16)

\paper {
indent = 0
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
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

%oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright information ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "DOŠLI SMO TE SLAVITI" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "BRUNO I VESNA LICENDER"}
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}

SCOREVERSE = \relative c' {
	\key e \major
%	\partial 4
%kitica
\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro")  A }
%\repeat volta 2 {
	h'8 h h h16 cis ~ cis8 e e4 |
	e8 e e e16 fis ~ fis8[ e] e e |
	e2 r2 |
	r1 |
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
\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro")  B }
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
e1 | cis2:m h | e1 | e |
\override ChordName #'Y-offset = #4
e | cis2:m h | e1 | e |
}
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)

LYRICSVERSEONE = \lyricmode {
Do -- šli smo te sla -- vi -- ti.
I -- me tvo -- je da -- nas uz -- di -- ći.
Pje -- sme će -- mo pje -- va -- ti.
Ra -- do -- sno pred to -- bom ple -- sa -- ti.

Po -- di -- gni -- mo ru -- ke sa -- da Go -- spo -- du u čast.
Za -- pje -- vaj -- mo svi u glas.
}

LYRICSCHORUS = \lyricmode {
Čast i sla -- va te -- bi pri -- pa -- da.
Čast i sla -- va te -- bi pri -- pa -- da.
}

LYRICSVERSETWO = \lyricmode {
Vi -- so -- ko si iz -- nad sveg.
Kralj u Ne -- bu za -- \skip 8 u -- vijek. \skip 8
Te -- bi ću se kla -- nja -- ti
u du -- hu i i -- \skip 8 sti -- ni. \skip 8
}

\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \CHORDSVERSE }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose e a
						\CHORDSVERSE }
	\new Voice {
			\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
			\transpose e a,
			\SCOREVERSE }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \LYRICSVERSEONE }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \LYRICSVERSETWO } 
	>>
	%\midi {}
}

\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \CHORDSCHORUS }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose e a
						\CHORDSCHORUS }
	\new Voice {
			\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
			\transpose e a,
			\SCORECHORUS }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \LYRICSCHORUS }
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
