\version "2.16.2"

\header {
title = "ŽIVOT S TOBOM"
composer = "DANKO TOMANIĆ"
poet = "116 BPM | BARRY ROCK"
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
	\key d \major
	\mark \default
	e4. fis8 ~ fis4 a, |
        e'4. fis8 ~ fis4 e4 |
        e4. d8 ~ d4 cis |
        cis4. d8 ~ d4 a |
        e'4. fis8 ~ fis4 a, |
        e'4. fis8 ~ fis4 a4 |
        e4. d8 ~ d4 cis |
        cis4. d8 ~ d2 |
        r8 g g g16 g ~ g8 fis e4 |
        r8 g8 g g16 g ~ g8 fis g4 |
        a1 |
        r1 |
        r8 g g g16 g ~ g8 fis e8 g |
        r8 g8 g g16 g( ~ g8 fis) g4 |
        a1 |
        r1 |
        
        \mark \default
        a1 ~ |
        a2. h4 |
        fis8( e4) d8 ~ d4 d8 d |
        g8 fis d d ~ d e ~ e4 |
        
        \mark \default
        a1 ~ |
        a2. h4 |
        fis8( e4) d8 ~ d4 d8 d |
        g8 fis d g( ~ g fis) e( d) |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t    
        d2:sus2 d | d:sus2 d |
        h2:sus2 h:m | h:sus2 h:m |
        d2:sus2 d | d:sus2 d |
        h2:sus2 h:m | h:sus2 h:m |
        e1:m | g | a | a |
        e1:m | g | a | a |
        
        d1 | a | h:m | g2 a2 |
        d1 | a | h:m | g2 a2 |
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
