\version "2.16.2"

\header {
title = "ON JE TU"
composer = "DANKO TOMANIĆ"
poet = "95 BPM | CRO ROCK"
copyright = ""
subtitle = "GECEMANI"
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
	\key c \major
	\mark \default
	e4 e g g |
        c,4 c e2 |
        c4. a8 f'8 e d c |
        e2 d |
        e4 e g a8( h) |
        c8 h a g e2 |
        a8 g f e a g f e |
        r4 e8\( c\) d4. c8 |
        c2 r2 |
        
        \mark \default
        r4 c'4 h4. g8 |
        a4. f8 e2 |
        r4 c'8 c h4. g8 |
        g4 a8 a( g2) |
        r4 c4 h4. g8 |
        a4. f8 e2 |
        r4 e4 g4. e8 |
        e8( d ~ d2) c8 d |
        c1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        c2 g/h | a:m g | f1 |
        g2/g g | c g/h | a:m e:m | f1 |
        c2/g g | c1 |
        
        a2:m e:m | f c | a:m e:m | g1 |
        a2:m e:m | f c | a:m e:m | g1 |
        c1 |
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
