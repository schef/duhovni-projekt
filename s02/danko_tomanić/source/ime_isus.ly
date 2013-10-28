\version "2.16.2"

\header {
title = "IME ISUS"
composer = "DANKO TOMANIĆ"
poet = "128 BPM | PINK ROCK"
copyright = ""
subtitle = ""
arranger = ""
}

\include "deutsch.ly"
\include "romanChords_2.0.1.ly"
\include "jazzChords_2.0.1.ly"
\include "config_2.0.1.ly"

%NOTE
%\once \override Score.RehearsalMark #'Y-offset = #-1.7
%\once \override Score.RehearsalMark #'outside-staff-priority = #1
%\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key h \minor
	\mark \default
	\partial 4
        fis8 a |
        h8 a ~ a4 h8 a ~ a4 |
        h8 fis ~ fis2 h8 h |
        h8 a ~ a2 a8 g |
        g8 fis ~ fis2 fis8 a |
        a8 g ~ g2 g8 fis |
        fis8 e ~ e2 e8 d |
        fis8 e ~ e4 e d8 fis ~ |
        fis8 e ~ e4 fis4 fis |
        d4 h2 r4 |
        r2

        \breathemoj
        d'4 d |
        d4 cis cis8 h4 a8 ~ |
        a2 r4 cis8 cis |
        cis4 h h8 a4 g8 ~ |
        g4 r4 h a |
        cis4 h2 r4 |
        r2

        \breathemoj
        fis4 d |
        e4( fis8) e ~ e4 r4 |
        r2 fis4 fis |
        d4 h2 r4 |
        r2 r4
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        s4 |
        h1*2:m ||
        fis:m ||
        e:m ||
        a2*3 a4 fis:7/ais ||
        h1*2:m ||
        a ||
        g ||
        h:m ||
        a ||
        \set chordChanges = ##t
        h1:m |
        h4*3:m        
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
\midi { \tempo 4 = 128 }
}
