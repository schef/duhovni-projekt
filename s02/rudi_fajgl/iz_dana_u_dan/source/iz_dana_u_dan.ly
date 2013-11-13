\version "2.17.29"

\header {
title = "IZ DANA U DAN"
composer = "RUDI FAJGL"
bpm = "65"
style = "UNKNOWN"
titlex = "IZ DANA U DAN"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key c \major
  \time 6/8
	\mark \default
	\partial 8*3
	e8 g e |
	d4 c8 ~ c4. |
	r4 c8 e d c |
	d2. |
	r4 g8 g a g |
	h4 h8 h8 h a |
	g4. a8 g f |
	e2. |
	r4. e8 g e |
	d4 c8 ~ c4. |
	r4. c'8 d c |
	c2. |
	r4. a8 h c |
	g4 g8 g f e |
	d4 e8 f8 e d |
	c2. |
	r4 

	\breathemoj
	c'8 c d c |
	c4. ~ c4 a8 |
	f8 a4 r4 c8 |
	c4 a8 f8 g a |
	g2. |
	r4 g8 g8 a g |
	h4 r8 h8 h a |
	g4 r8 a8 g f |
	e2. |
	r4 c'8 c d c |
	c4. ~ c4 a8 |
	f8 a4 r4 c8 |
	c4 a8 f g a |
	g2. |
	r4 g8 g a g |
	h4 r8 h8 h a |
	g4 e8 f e d |
	c2. |
	r4. 
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				s8*3 |
				c2. | c | g | g | g | g | c | c | c | c/e |
				f2. | f | c | g | c | c |
				f2. | f | f | c | c |
				g2. | g | c | c:7 | f | f |
				f2. | c | c | g | g | c | c4.
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Sa -- mo sam čo -- vjek, __ "" ta -- ko sam slab
	po -- mo -- zi mi ti da pro -- na -- đem put, iz svije -- ta zla
	pru -- ži mi ru -- ku, __ sna -- ge mi daj,
	bu -- di moj put, _ i ži -- vot moj, iz da -- na u dan

}

lyricsATwo = \lyricmode {
	Ko -- li -- ku pa -- tnju, __ ti po -- dni -- o si
	_ za na -- rod svoj, _ ti u -- mro si, na gol -- go -- ti
	tvo -- ja je žr -- tva, __ o -- pra -- la grijeh
	na -- ro -- du tvom, po -- ka -- zu -- je put, iz da -- na u
	dan

}

lyricsB = \lyricmode {
	Iz da -- na u dan, __ moj bo -- že,  kroz   ži -- vot vo -- di me ti
	sve pro -- la -- zno je, ti ni -- kad ne, moj i -- su -- se
	iz da -- na u dan, __ moj bo -- že, tvoj duh nek vo -- di me svud
	ti po -- zna -- ješ me, i vo -- di me, iz da -- na u dan

}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 65 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
