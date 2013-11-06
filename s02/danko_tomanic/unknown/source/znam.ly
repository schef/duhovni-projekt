\version "2.17.29"

\header {
title = "ZNAM"
titlex = "I KNOW"
composer = "DANKO TOMANIĆ"
bpm = "120"
style = "FUNK ROCK"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key a \minor
	\mark \default
	r8 c8 c a c a c d ~ |
        d8 a ~ a4 r2 |
        r8 d,8 h' h h a g h ~ |
        h8 c4 c8 ~ c d c h |
        a8 c c a c\( a\) c d ~ |
        d a ~ a4 r8 d8 c h |
        r8 h8  h h e4 d |
        d8( c h a ~ a4) r4 |
        r8
        
        \breathemoj
        e8 e d e d e4 |
        \stemDown a4 g8 f ~ f e e( d) |
        r8 d8 d c d c g' d( ~ |
        d8 e ~ e4) r2 |
        c4. a8 ~ a4 c4 |
        d4. a8 ~ a4 r4 |
        r8 h8 h h e4 d |
        d8( c h a ~ a4) r4 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
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
ja ni -- sam bi -- o ni bli -- zu __
a svo -- je ru -- ke i me -- ni si po -- nu -- di -- o
znam ni -- sam broj _ u ni -- zu __
i me -- ne, me -- ne si spa -- si -- o __
}

lyricsATwo = \lyricmode {
tvo -- je su pro -- bo -- li ru -- ke __
iz njih po -- te -- kla je lju -- bav baš za cije -- li svijet
ti si po -- bje -- di -- o mu -- ke __
od ta -- da u me -- ni ži -- viš vijek __
}

lyricsC = \lyricmode {
i sa -- da znam da na kri -- žu gol -- got -- skom
i moj si no -- si -- o grijeh __
ne -- ma __ mi ne -- ma __ ži -- vje -- ti bez te -- be __
}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsC }
        \addlyrics { \lyricsATwo }
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


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
