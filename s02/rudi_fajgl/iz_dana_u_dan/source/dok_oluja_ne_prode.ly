\version "2.17.29"

\header {
title = "DOK OLUJA NE PROĐE"
composer = "RUDI FAJGL"
bpm = "95"
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
        \time 3/4
	\mark \default
	\partial 4
	c8 d |
	e4. dis8 e f |
	g8 e ~ e4 d8 e |
	f4. e8 f8 g |
	f2 g8 a |
	h4. h8 a8 g |
	h8 a ~ a4 g8 f |
	a8 a ~ a4 g8 f |
	e2 c8 d |
	e4. dis8 e8 f |
	g8 e ~ e4 d8 c |
	a'4. a8 a8 h |
	c2 h8 a |
	g2 c,8 d |
	e4. e8 d8 d |
	c2. |
	r2

	\breathemoj
	c8 e |
	d4. d8 d e |
	f8 d ~ d4 e8 f |
	g4 g g8 f |
	g2 g8 g |
	a4. a8 a a |
	a8 fis ~ fis4 g8 a |
	h4. h8 h a |
	h2

	\breathemoj
	h8 h |
	c4. h8 c h |
	c4 c h8 c |
	d4 c c8 a |
	g2 a8 a |
	g2 c,8 d |
	e4. e8 d d |
	c2. |
	r2 
	\bar "|."

}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				s4 | c2. | c | g | g | g |
				g2. | f | c | c | c:7 | f2. |
				f2.:m | c2. | a2:m g4 | c2. | c | g |
				g2. | c | c | d | d | g | g:7 |
				c2. | c | f | c2 f4 | c2. | a2:m g4 |
				c2. | c2 
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
}

lyricsB = \lyricmode {
}

lyricsC = \lyricmode {
}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 95 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
