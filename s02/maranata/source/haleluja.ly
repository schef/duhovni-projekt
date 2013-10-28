\version "2.16.2"

\header {
title = "HALELUJA"
composer = "MARANATA"
poet = "128 BPM | "
copyright = ""
subtitle = "MIR NEBESKI"
arranger = ""
}

\include "deutsch.ly"
\include "../../config/romanChords_2.0.1.ly"
\include "../../config/jazzChords_2.0.1.ly"
\include "../../config/config_2.0.1.ly"

%NOTE
%\once \override Score.RehearsalMark #'Y-offset = #-1.7
%\once \override Score.RehearsalMark #'outside-staff-priority = #1
%\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key c \major
	\mark \default
	c4 g8 c ~ c4 c |
        c4 a8 c ~ c4 c |
        r4 c8 c c c c4 |
        h4 a8 g ~ g g g g |
        a4 c a c |
        a4 c a c |
        d2 ~ d8 e e d |
        c4 c h8 a h4 |
        c1 |
        
        \mark \default
        g4 g g g |
        a4 c g g ~ |
        g4 c8 c c4 c |
        h4 a8 g ~ g4 g |
        a4 c a c |
        \time 2/4
        a4 c |
        \time 4/4 d1 |
        r4 c8 c c2 |
        d1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t  
        c1 | f | c | g |
        f1 | f2:maj/c f:7/es | d1 |
        c2/g g | c1 |
        \set chordChanges = ##f
        c1 |
        \set chordChanges = ##t
        f2 c | c1 | g |
        f2 f:maj/e | f2:7/es |
        d1 | c/g | g |
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
\midi { \tempo 4 = 128 }
}
