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
  title = "UNKNOWN"
% subtitle = "()"
  composer = "unknown"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key g \major
%	\partial 4
\mark \markup { \box \bold A }
\repeat volta 2 { 
	c'16 c f8 |
	e4 d r8. b16 b8 d |
	c2 r4 c16 c f8 |
	e8 d16 d ~ d8. e16 f8 e d c |
	c2 r4 a16 a c8 |
	d8 d16 d ~ d8. e16 f8 e c a |
	d2( c) |
	b8 b16 b ~ b8. c16 d8[ c b a] |
}
	\alternative {
		{g2 r4}
		{a2. r4 \set Timing.measurePosition = #(ly:make-moment -2 4)}
	}
	\bar "||"
}

scoreB = \relative c' {
	\key f \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #10
	a'4. g16 b ~ b2 |
	g8 a b8. a16 a2 |
	a4. g16 b ~ b4. c,8 |
	g'8 a b8. a16 a4 a8 g16 g ~ |
	g8 f4. a8 g16 f ~ f8 e |
	d2 r8 g8 f c16 b ~ |
	b2 r8 c f e16 f ~ |
	f2 r4 d8[ e] |
	\set Timing.measurePosition = #(ly:make-moment -3 4)
	f2.
	| \bar "|."	
}

chordsA = \chordmode {
\jazzyChords
\skip4 | b2 c | f1 | b2 c | f2. c4/e |
d2:m c | b f/a | g1:m | c2. | a1:7 |
}

chordsB = \chordmode {
\jazzyChords
f2 g:m | c f | f g:m | c f4 f/e |
d2:m c | b f/a | g:m f/a | b c | f2.
}

lyricsAOne = \lyricmode {
I -- znad svih si -- la i kra -- lje -- va
I -- znad sve pri -- ro -- de i sve -- ga stvo -- re -- nog
I -- znad sve mu -- dro -- sti i ljud -- skih pu -- to -- va
Ti si bi -- o pri -- je stva -- ra -- nja
\skip 8
}

lyricsB = \lyricmode {
Ra -- za -- pet u grob po -- lo -- žen
Ži -- vi -- o da bu -- deš od -- ba -- čen
Ka -- o ru -- ža zga -- že -- na na tlu
Grijeh u -- ze -- o
\skip 8 Mi -- sle -- ći na me -- ne
}

lyricsATwo = \lyricmode {
I -- znad svih kraljev -- stva i prije -- sto -- lja
I -- znad svih ču -- \skip 8 da što svijet ih po -- zna -- je
I -- znad sveg o -- bi -- lja bo -- gat -- stva ze -- malj -- skog
Vrije -- dnost tvo -- ja ne -- iz -- mjer -- na \skip 8 je
}
\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose f c \chordsA }
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
						\transpose f c \chordsB }
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
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
