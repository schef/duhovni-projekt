\version "2.16.2"

\header {
title = "DIVNA SLAVNA LJUBAV"
composer = "MARANATA"
poet = "92 BPM | "
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
note = \relative c' {
	\key b \major
	\mark \default
	f4 f g f |
        d'4 c8( d) c4 b |
        a4 g b g |
        f es8( f) d2 |
        f4 f g f |
        d'4 c8( d) c4 b |
        g4 es' d b |
        a4 g8( a) b2 |
        
        \mark \default
        b4 b b a |
        g4 a8( g) fis4 d |
        d'4 d es d |
        c4 c8( d) c2 |
        f,4 f g f |
        d'4 c8( d) c4 b |
        g4 es' d b |
        a4 g8 a b2 | 
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t
        b2 es4 b |
        b4 f2 b4 |
        es1 | es2/f b |
        b2 es4 b |
        b4 f fis:dim g:m |
        es2 b | f2 b |
        
        g1:m | g2:m d | b2 es4 b |
        c2 f | b2 es4 b |
        b4 f fis:dim g:m |
        es2 b | f b |
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
        \new ChordNames { \romanChords \transpose b c \akordi }
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
\midi { \tempo 4 = 92 }
}
