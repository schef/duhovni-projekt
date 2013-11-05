\version "2.17.29"

\header {
title = "DOBRI PASTIR"
composer = "DANKO TOMANIĆ"
bpm = "125"
style = "COUNTRY ROCK"
titlex = "TVOJE NEBO"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key g \major
	\mark \default
	a4 r4 r2 |
        r4 h8 d e d ~ d4 |
        e8 d e d e g,4 h8 ~ |
        h8 d ~ d4 r2 |
        a4 a a r4 |
        r4 h8 d e( d ~ d4) |
        e8 d e d e g,4 h8 ~ |
        h8 d ~ d4 r2 |
        r4 c8 c c d c h ~ |
        h8 a ~ a4 r2 |
        r4 h8 h dis4 h8 a ~ |
        a8 g ~ g4 r2 |
        r4 c8 c c c c d |
        h8 a4 d,8 d' d4 a8 ~ |
        a8 g ~ g4 r2 |
        
        \mark \default
        g'2( ~ g8 e d) e16( d |
        e2) r2 |
        c8 h c h c g4 h8 ~ |
        h8 d ~ d4 r2 |
        g2( ~ g8 e d) e16( d |
        e2) r2 |
        c8 h a g h a4 g8 ~ |
        g2 r2 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        a1:m | h:m | c | g2 d2 |
        a1:m | h:m | c | g2 d2 |
        a1:m | d | g2 h:7 | e:m g:7/f |
        c1 | d | g2 d |
        
        g2 d | e:m d | a1:m | g2 d |
        g2 d/fis | e:m d | a:m d | g1 |
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
\midi { \tempo 4 = 125 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
