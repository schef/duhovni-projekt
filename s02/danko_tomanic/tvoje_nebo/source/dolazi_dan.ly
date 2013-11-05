\version "2.17.29"

\header {
title = "DOLAZI DAN"
composer = "DANKO TOMANIĆ"
bpm = "97"
style = "BALADA"
titlex = "TVOJE NEBO"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key c \major
	\mark \default
	\partial 4*3
        e8 e e8. f16 ~ f8 g |
        g8\( a ~ a2 f8( e)\) |
        d4\( d8\) d d8 e4 f8 |
        g8( a ~ a2) e16( d e8) |
        d8( c4) f8 f8. f16 ~ f8 e |
        e8. d16 ~ d8 f f8. f16 ~ f8 e |
        e8. d16 ~ d4 e8. d16 ~ d8 c |
        c1 |
        r2 e8. d16 ~ d8 c |
        c1 |
        r4 r8 
        
        \breathemoj
        c'8 c8. h16 ~ h8 g16( a ~ |
        a8) a ~ a2. |
        r4 h8 h h8. a16 ~ a8 g |
        g1 |
        r4 r8 e8 e8. f16 ~ f8 g |
        g8. f16 ~ f8 f f8. f16 ~ f8 g |
        e8. d16 ~ d8 h' h8. a16 ~ a8 g |
        g1 |
        r4 r8 c8 c8. h16 ~ h8 g16( a ~ |
        a8) a ~ a2. |
        r2 h8. a16 ~ a8 g |
        g2.( h4 |
        a4) r8 e8 e8. f16 ~ f8 g |
        g8 f4 f8 f f4 g8 |
        e8 d ~ d4 e8. d16 ~ d8 c |
        c1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t
        s4*3 |
        f1 | g | a2:m g |
        f1 | g | g | f |
        f1/g | c |
        
        c2 a4:m g |
        f1 | g | c2:maj g/h | a1:m |
        d1:m7 | g2:6 g:7 | c1 |
        c2 a4:m g |
        f1 | g | c2:maj g/h | a1:m |
        d1:m7 | g | c |
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
\midi { \tempo 4 = 97 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
