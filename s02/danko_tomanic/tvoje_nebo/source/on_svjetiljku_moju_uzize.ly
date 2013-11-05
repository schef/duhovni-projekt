\version "2.16.2"

\header {
title = "ON SVJETILJKU MOJU UŽIŽE"
composer = "DANKO TOMANIĆ"
poet = "66 BPM | ROMANTIC ROCK"
copyright = ""
subtitle = "TVOJE NEBO"
arranger = ""
}

\include "deutsch.ly"
\include "../config/romanChords_2.0.1.ly"
\include "../config/jazzChords_2.0.1.ly"
\include "../config/config_2.0.1.ly"

%NOTE
%\once \override Score.RehearsalMark #'Y-offset = #-1.7
%\once \override Score.RehearsalMark #'outside-staff-priority = #1
%\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key f \major
	\mark \default
	r16 c c c c d e c ~ c4 r4 |
        r16 c c c c b8 a16 g8 f e4 |
        r16 c' c c c d e c ~ c4 r4 |
        r16 c c c c b8 a16 g8 f e4 |
        r16 d' d d d c8 b16 cis4 r8 a8 |
        d8 a a g16 f ~ f2 |
        \time 2/4
        r2 |
        
        \mark \default
        \time 4/4
        r16 g g g g a8 b16 a8 c16 c ~ c4 |
        r16 g16 g g g\( f\) e8 f4 r4 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f      
        f2 c/e | d:m c |
        f2 c/e | d:m c |
        b2 a:7 | d4:m c b2 | b2 |
        
        c2 f | c f |
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
\midi { \tempo 4 = 66 }
}
