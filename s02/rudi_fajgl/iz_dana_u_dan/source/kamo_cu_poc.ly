\version "2.17.29"

\header {
title = "KAMO ĆU POĆ"
composer = "RUDI FAJGL"
bpm = "140"
style = "UNKNOWN"
titlex = "IZ DANA U DAN"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key f \major
        \time 4/4
	\mark \default
	a2 a4 b8 a ~ |
	a2 r4 a4 |
	g4 f f8 g4 f8 ~ |
	f2 r2 |
	f2 f4 g |
	a4 a b a |
	a8 \( g ~ g2. ~ |
	g2 \) r2 |
	a2 a4 b8 a ~ |
	a2 r4 a4 |
	g4 f f8 g4 f8 ~ |
	f2 r2 |
	a2 c8 b4 a8 ~ |
	a2 g8 g4 f8 ~ |
	f1 ~ |
	f2 r2 |
	
	\once \override Score.RehearsalMark.Y-offset = #-1.7
	\mark \default
	a2 a4 b8 a ~ |
	a2 r4 a4 |
	g2 f4 g8 f ~ |
	f2 r2 |
	f2 f4 g |
	a4 a b a |
	a8 \( g ~ g2. ~ |
	g2 \) r2 |
	a2 a4 b8 a ~ |
	a2 r4 a4 |
	g4 f f8 g4 f8 ~ |
	f2 r2 |
	a2 a8 b4 a8 ~ |
	a2 g8 g4 f8 ~ |
	f1 ~ |
	f2 r2 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				f1 | f | b |
				f1 | f | f | c | c | f |
				f1 | b | f | f | f2/c c | f1 |
				f1 | f | f | b | f |
				f1 | f | c2 g/h | c1 | f1 | f |
				b1 | f | f2 b | f/c c | f1 | f |
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
        \new ChordNames { \romanChords \transpose f c \akordi }
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
\midi { \tempo 4 = 140 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
