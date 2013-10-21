\version "2.16.2"

\header {
title = "TVOJE NEBO"
composer = "DANKO TOMANIĆ"
poet = "114 BPM | LOUNGE JAZZ"
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
	\key c \major
	\mark \default
        r8 a a g a g a g ~ |
        g8 d ~ d4 r2 |
        r8 a'8 a g a g a( g ~ |
        g8 a16 g \stemUp h4) \stemNeutral r2 |
        r8 a a g a g a g ~ |
        g8 d ~ d4 r2 |
        r8 f8 f e f e f d ~ |
        d2 r2 |
        
        \mark \default
        r4 c'8 h c h c c ~ |
        c8 d ~ d4 r2 |
        r8 e,8 e'8 d e d e e ~ |
        e8 f ~ f4 r8 e4 f8 |
        f8( g ~ g4) \times 2/3 {g4 f e(} |
        d8) d ~ d4 d8( e4) h8 |
        d8 c( ~ c4 ~ c8 h c h |
        h8 c ~ c4 ~ c8 d16 c d8 c) |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t      
        d1:m7 | g:7 | d1:m7 | g:7 |
        d1:m7 | g:7 | d1:m7 | g:7 |
        
        c1 | g | a:m | f |
        c1 | g/h | a:m | f |
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
\midi { \tempo 4 = 114 }
}
