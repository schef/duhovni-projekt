\version "2.16.2"

\header {
title = "BOŽE SMILUJ SE"
composer = "MARANATA"
poet = "79 BPM | "
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
note = \relative c'' {
	\key f \major
        \time 3/4
	\mark \default
	\partial 4
        a4 |
        c4 d4. c8 |
        c2 a4 |
        c8 c b4 a |
        f2 f4 |
        c'4 b a |
        b8 a f4. f8 |
        a4 g f |
        g2 a4 |
        c4 d4. c8 |
        c4 d4. a8 |
        c4 b a |
        f4 f4. f8 |
        c'4 b a |
        b8( a) f4. c8 |
        d4 f g |
        f2. |
        r2 
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
        s4 |
        f4*3 |
        f4*3:maj/e |
        f4*3:7/es |
        b4*3/d | b:m/des |
        f4*3/c | g/h | c:sus4.7 |
        f4*3 | f:maj/e | f:7/es | b/d |
        b4*3:m/des | f/c | c:sus4.7 | f | f2 
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
\midi { \tempo 4 = 79 }
}
