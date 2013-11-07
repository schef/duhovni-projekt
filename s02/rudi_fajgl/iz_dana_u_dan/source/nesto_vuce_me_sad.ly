\version "2.17.29"

\header {
title = "NEŠTO VUĆE ME SAD"
composer = "RUDI FAJGL"
bpm = "98"
style = "GOSPEL POP"
titlex = "IZ DANA U DAN"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key g \major
        \time 4/4
	\mark \default
	r4 h8 h c c h h( |
	a4) r4 r2 |
	r4 h8 h c8 c4 g8 |
	g8 a h a ~ a4 r4 |
	r4 h8 h c c h h( |
	a4) r4 r4 a8 a |
	a8 g ~ g4 r2 |
	a8 g4 g8 g( a) h8 h( ~ |
	h16 a g8 ~ g2.) |
	r1 |

	\mark \default
	r4 c4 g4. e8 |
	g8 a h a ~ a4 r4 |
	r8 h8 h h c c c c |
	h4 h8 a ~ a4 r4 |
	r4 c4 g4. e8 |
	g8 a h a ~ a4 r4 |
	r4 c16 c c8 ~ c8 h a g |
	r4 c8 c16 c ~ c8 h a g( |
	a8) a ~ a2. ~ |
	a1 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
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
        \new ChordNames { \romanChords \transpose g c \akordi }
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
\midi { \tempo 4 = 98 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
