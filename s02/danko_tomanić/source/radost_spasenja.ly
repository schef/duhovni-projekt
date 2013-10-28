\version "2.16.2"

\header {
title = "RADOST SPASENJA"
composer = "DANKO TOMANIĆ"
poet = "78 BPM | BALAD ROCK"
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
	\key d \major
	\mark \default
	a16 a8. ~ a4 r4 r16 a16 a g |
        g16( fis8. fis16 e d8 ~ d16 e fis8 ~ fis4) |
        r4 r16 h h h h h8. r8 g16 fis\( |
        fis8\) e ~ e4 r2 |
        
        \mark \default
        r8 a16 fis ~ fis4 r8 ais16 fis ~ fis fis8 e16 |
        e16 d8( e16 fis4) r2 |
        
        r4 r16 h,16 h d fis16 e8. r16 e16 e d ~ | %kak pjeva inace
        d8 d ~ d4 r2 |
        
        %r8 d16 d h d8. r8 fis16 e e8. d16 | %kak pjeva zadnji put (b1)
        %fis8 e ~ e4 r2 | %(b1)
                
        \mark \default
        \key c \major
        r4 r16 g16 e' e e d8. d16 e8. |
        d8 c( ~ c16 d e8 ~ e4) r4 |
        r4 r16 c16 c c d8 c16 h ~ h8 g |
        e'16( d e8 ~ e8 d16 e d2) |
        r4 r16 g,16 e' e e d8. r8 e16 e |
        r8 d16 c( ~ c d e8 ~ e4) r4 |
        r4 r16 c c c d c8. r8 d16 d |
        d1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        d2 a2/cis |
        h2:m a |
        g2 e:m |
        a1 |
        
        d2 fis |
        h2:m h4:m a |
        g2 a |
        d1 |
}
        
modulacija = \chordmode {
        \set chordChanges = ##f
        c2 g2/h |
        a2:m a4:m g |
        f2 g |
        c2 g |
        c2 g2/h |
        a2:m a4:m g |
        f2 g |
        d1 |
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
        \new ChordNames { \romanChords \transpose d c \akordi \transpose c c \modulacija}
        \new ChordNames { \jazzChords \akordi \modulacija}
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi \modulacija }
        \new Staff { \note }
>>
\midi { \tempo 4 = 78 }
}
