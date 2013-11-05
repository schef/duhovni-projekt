\version "2.16.2"

\header {
title = "DA ON BUDE I MOJ"
composer = "MARANATA"
poet = "83 BPM | "
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
note = \relative c' {
	\key a \major
        \time 3/4
	\mark \default
        \partial 4
        e4 | 
        cis'4 h4 a4 |
        a4. gis8 fis4 |
        fis4 gis a |
        e2 e4 |
        e4 gis h |
        d4. cis8 h4 |
        a4 a cis |
        h2 e,4 |
        e4 fis gis |
        a2 e8 e |
        a4 h cis |
        d2 d8 d |
        cis4 e4. fis8 |
        e4 cis a |
        cis4 cis h |
        a2
        
        \breathemoj
        d4 |
        d4 fis, fis8. fis16 |
        fis2 a8 a |
        a4 e4 e8. e16 |
        e2 e4 |
        a4 h cis 
        d4. e8 fis4 |
        e4. cis8 h4 |
        a2 
        \bar "|." 

}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t
        s4 |
        a4*3 | d | d | a | e | e |
        a4*3 | e | e | a | a | d |
        a4*3 | a4*2 fis4:m | a4*2/e e4 | a4*3 |
        d4*3 | d | a | a | a | d | a4*2/e e4 | a2 
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
        \new ChordNames { \romanChords \transpose a c \akordi }
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
\midi { \tempo 4 = 83 }
}
