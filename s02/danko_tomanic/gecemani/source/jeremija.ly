\version "2.17.29"

\header {
title = "JEREMIJA"
composer = "DANKO TOMANIĆ"
bpm = "66"
style = "CLAPTON ROCK"
titlex = "GECEMANI"
}

\include "s02.ily"
%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key g \major
	\mark \default
	r4 r8 g16 g g\( g8.\) r8 d'16 d |
        d8 c c h h16 a\( a8\) r16 a a g |
        a16 h g8 r4 r8 r16 g16 g a h8 |
        c16 h g8 ~ g e16 e c'16 h g8 ~ g8 e |
        g2 r2 |
        
        \mark \default
        r4 r8 a16 a a8 a16 h ~ h8 a |
        g2 r2 |
        r4 r8 a16 a a8 a16 h ~ h8 a |
        g2 r2 |
        r4 r8 a16 a a a8. h8 a |
        g1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f       
        g1 | c | g | c | g |
        d1 | c1 | d | c | d | c |
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
\midi { \tempo 4 = 66 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
