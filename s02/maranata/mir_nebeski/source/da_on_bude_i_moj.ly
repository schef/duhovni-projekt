\version "2.17.29"

\header {
title = "DA ON BUDE I MOJ"
composer = "MARANATA"
bpm = "83"
style = "TAMBURAŠKI"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
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
%\once \override ChordNames.ChordName.X-offset = #2
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


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
