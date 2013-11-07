\version "2.17.29"

\header {
title = "ZAPJEVAJMO PJESMU"
composer = "MARANATA"
bpm = "96"
style = "TAMBURAŠKI"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key d \major
        \time 4/4
	\mark \default
	\partial 4
	d4 |
	fis4 e fis g |
	a2 a4 a |
	g4. fis8 g4 a |
	fis2. d4 |
	fis4 e fis g |
	a2 a4 a |
	g4. fis8 g4 a |
	fis2.

	\breathemoj
	d4 |
	d4 h' h h |
	h2 h4 h |
	h4 d cis h |
	a2. a4 |
	d4. fis,8 fis4 fis |
	a2 a4 a |
	g4. fis8 g4 e |
	d2.
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
	s4 |
	d1 | d | a | d |
	d1 | d | a | d |
	g1 | g | g |
	d1 | d | d |
	a1 | d2.
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
        \new ChordNames { \romanChords \transpose d c \akordi }
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
\midi { \tempo 4 = 96 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
