\version "2.14.1"

\header {
  title = "IZNAD SVIH SILA"
  subtitle = "\"ABOVE ALL\""
  composer = "P. BALOCHE | L. LEBLANK"
  poet = "TEST | TEST"
  copyright = "COPy info"
}

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"
\include "config_grand.ly"

scoreA = \relative c' {
	\key f \major
	\partial 4
	c'16 c f8 |
	\mark \default
	\repeat volta 2 {
	e8.\( d16 \) d4 r8. b16 b8 d |
	c2 r4 c16 c f8 |
	e8 \( d16 \) d ~ d8. e16 f8 e d c |
	c2 r4 a16 a c8 |
	d8 d16 d ~ d8. e16 f8 e c a |
	d2( c) |
	b8 b16 b ~ b8. c16 d8[ c b a] | }
	\alternative {
	{g2 r4 c16 c f8}
	{a,2. r4 }} \bar "||"
}

scoreB = \relative c' {
	\mark \default
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
\skip4 | b2 c | f1 | b2 c | f2. c4/e |
d2:m c | b f/a | g1:m | c1 | a1:7 |
}

chordsB = \chordmode {
f2 g:m | c f | f g:m | c f4 f/e |
d2:m c | b f/a | g:m f/a | b c | f2.
}

lyricsAOne = \lyricmode {
I -- znad svih si -- \skip8  la i kra -- lje -- va
I -- znad sve pri -- ro -- de i sve -- ga stvo -- re -- nog
I -- znad sve mu -- dro -- sti i ljud -- skih pu -- to -- va
Ti si bi -- o pri -- je stva -- ra -- nja
%volta
I -- znad svih
je
}

lyricsB = \lyricmode {
Ra -- za -- pet u grob po -- lo -- žen
Ži -- vi -- o da u -- mreš od -- ba -- čen
Ka -- o ru -- ža zga -- že -- na na tlu
Grijeh u -- ze -- o
si mi -- sle -- ći na me -- ne
}

lyricsATwo = \lyricmode {
I -- znad svih kra -- ljev -- stva i prije -- sto -- lja
I -- znad svih ču -- \skip 8 da što svijet ih po -- zna -- je
I -- znad sveg o -- bi -- lja bo -- gat -- stva ze -- malj -- skog
Vrije -- dnost tvo -- ja ne -- iz -- mjer -- na % \skip 8 je
}

\score {
<<
        \new ChordNames { \romanChords \transpose f c { \chordsA \chordsB } }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
>>
}

