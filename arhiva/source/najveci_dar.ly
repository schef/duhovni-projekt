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
  title = "NAJVEĆI DAR"
% subtitle = "()"
  composer = "M. Redman i P. Wilson"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key d \major
%	\partial 4
\mark \markup { \box \bold A }
%\repeat volta 2 {
	fis8[ fis] fis[ d] fis g16 fis ~ fis4 |
	fis8[ fis] fis[ d] fis g16 fis ~ fis4 |
	h4 a d,2 |
	h'4 a d, ~ d8. d16 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis8. d16 |
	h'4 a d,2 |
	h'4 a d,4. a'8 |
	d8[ d] cis[ cis] a4. fis8 |
	g8 a ~ a4 ~ a4. a8 |
	d8[ d] cis[ cis] a4. fis8 |
	\time 2/4 g8 a a4 ~ |
	\time 4/4 \set Timing.measurePosition = #(ly:make-moment -3 4) a2. | 
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
\set Score.currentBarNumber = #14
	\partial 4
	a'16 h d8 ~ |
	d4 e d a |
	d8 cis4 d8 ~ d e4. |
	e8[ d] cis cis ~ cis2 |
	es8[ d] cis cis ~ cis4 a16 h d8 ~ |
	d4 e d a |
	d8 cis4 d8 ~ d e4 e8 |
	e8[ d] cis cis ~ cis2 |
	es8[ d] cis cis ~ cis8 d4 cis8 ~ |
	cis1 |


	\bar "||"	
}

scoreC = \relative c' {
	\key d \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #23
	r4 r8 d'16 e fis8 e16 d ~ d16 e8 fis16 ~ |
	fis4 r8 d16 e16 fis8 e16 d ~ d16 e8 fis16 ~ |
	fis4 r8 d16 e16 fis8 e16 d ~ d16 e8 d16 ~ |
	d1 |
	\bar "|."	
}

chordsA = \chordmode {
\jazzyChords
	d1 | a/cis | g | e:m |
	d1 | a/cis | e:m | g |
	e2:m d2/fis | g1 | e2:m d2/fis | c | a2. |
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
Tvo -- ja krv vi -- še go -- vo -- ri
Od svih va -- pa -- ja, pra -- znih, ze -- ma -- ljskih
O -- pra -- vda -- va me, od sve -- ga bra -- ni me
Kri -- ste, tvo -- ja krv
}

lyricsB = \lyricmode {
Što će grije -- he o -- pra -- ti
O -- pet nas i -- spu -- ni -- ti
Ni -- šta o -- sim krvi
Ni -- šta o -- sim krvi Kri -- sto -- ve
Što me či -- ni po -- tpu -- nim
Pri -- ja -- te -- ljem Go -- spo -- dnjim
Ni -- šta o -- sim krvi
Tvo -- je krvi, Kra -- lju I -- suse
}

lyricsC = \lyricmode {
Hva -- la ti za krv
Hva -- la ti za krv
Ni -- šta o -- sim Krvi
Tvo -- je krvi, Kra -- lju I -- su -- se
}

lyricsATwo = \lyricmode {
Tvoj križ mi -- lost svje -- do -- či
O sr -- cu O -- če -- vu što put nam pri -- pra -- vi
Hra -- bro kro -- čim sad, u si -- gu -- rno -- sti
Zbog krvi Kri -- sto -- ve
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
