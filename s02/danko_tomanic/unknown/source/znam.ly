\version "2.16.2"

\header {
title = "ZNAM"
titlex = "I KNOW"
composer = "DANKO TOMANIĆ"
bpm = "120"
style = "FUNK ROCK"
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
	\key a \minor
	\mark \default
	r8 c8 c a c a c d ~ |
        d8 a ~ a4 r2 |
        r8 d,8 h' h h a g h ~ |
        h8 c4 c8 ~ c d c h |
        a8 c c a c( a) c d ~ |
        d a ~ a4 r8 d8 c h |
        r8 h8  h h e4 d |
        d8( c h a ~ a4) r4 |
        r8
        
        \breathemoj
        e8 e d e d e4 |
        a4 g8 f ~ f e e( d) |
        r8 d8 d c d c g' d ~ |
        d8 e ~ e4 r2 |
        c4. a8 ~ a4 c4 |
        d4. a8 ~ a4 r4 |
        r8 h8 h h e4 d |
        d8( c h a ~ a4) r4 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f     
        a1:m | d | g | c4*3 c4/h |
        a1:m | d | e | a:m |
        a1 | d:m | g | c4*3 c4/h |
        a1:m | d:m | e | a:m |
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
