\version "2.17.95"

\header {
title = "JA NEZNAM ZAŠTO"
composer = "MARANATA"
bpm = "96"
style = "TAMBURAŠKI"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key e \major
	\mark \default
	\partial 4
        e4 |
        gis4. gis8 a( gis) fis( e) |
        cis'4 h h gis |
        h4. h8 cis( h) a( gis) |
        fis2. a4 |
        gis4. gis8 a( gis) fis( e) |
        cis'4 h h gis |
        h4. h8 cis8( h) a( fis) |
        e2.
       
       \breathemoj 
       e8 e |
       e'4 e ~ e8 e dis cis |
       cis4 h ~ h8 h cis h |
       h4 a ~ a8 a h a |
       a4 gis2 e4 |
       e'4 e ~ e8 e dis cis |
       cis4 h2 h8 h |
       dis4. cis8 dis4 h |
       e2. 
       \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t
        s4 |
        e1 |
        a4 e4*3 | e1 | h |
        e1 | a4 e4*3 | h1 |
        e1 | a |
        e1 | h | e | a | e | h | e4*3 
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
        \new ChordNames { \romanChords \transpose e c \akordi }
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
\midi { \tempo 4 = 96 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
