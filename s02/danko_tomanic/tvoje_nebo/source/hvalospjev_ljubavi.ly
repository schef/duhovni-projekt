\version "2.17.29"

\header {
title = "HVALOSPJEV LJUBAVI"
composer = "DANKO TOMANIĆ"
bpm = "121"
style = "COUNTRY"
titlex = "TVOJE NEBO"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key f \major
	\mark \default
	r4 r8 a8 g16 a g8 ~ g4 |
        r8 f8 e f e d ~ d4 |
        r4 r8 a'8 g16 a g8 ~ g4 |
        r8 f8 e f e d ~ d4 |
        r4 r8 g8 f16 g f8 ~ f4 |
        e8 d e8 d16 c r2 |
        r4 r8 g'8 f16 g f8 ~ f4 |
        e8 d e8 d16 c r2 |
        r2 r8 d8 d c |
        d16 d8. ~ d4 r8 b'4 b8 |
        a1 |
        r1 |
        
        \mark \default
        r2 a8 b4 c8 |
        c8( d4) c8 g2 |
        r4 r8 b8 b c4 d8 |
        f4 \tuplet 3/2 {e d c ~} c4 |
        r4 r8 c,8 a'8 b c c( |
        d4) c8 g ~ g2 |
        r4 r8 b8 b b4 b8 |
        a4 g f8 g4. |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t  
        d1:m | d:m | d:m | d:m |
        c1 | c | c | c |
        b1 | b | a:7 | a:7 |
        
        f1 | c | g:m | d:m |
        f | c | g:m | a:7 |
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
\midi { \tempo 4 = 121 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
