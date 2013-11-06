\version "2.17.29"

\header {
title = "POZIV"
composer = "DANKO TOMANIĆ"
bpm = "80"
style = "CRO ROCK"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key a \major
	\mark \default
	r8 fis16 gis a gis8. r8 h16 a gis8\( fis8\) |
        r4 e8. fis16 fis8( e ~ e4) |
        r8 fis16 gis a16 gis8. r8 h16 a gis8 fis |
        r4 e8 cis fis( e ~ e4) |
        r8. h'16 h h\( h\) a gis8. fis16 ~ fis4 |
        r8. h16 h h\( h\) a gis8. fis16 ~ fis4 |
        e4 fis8 fis16( e ~ e2) |
        
        \once \override Score.RehearsalMark.X-offset = #-1.7
        \once \override Score.RehearsalMark.Y-offset = #-1.2
        \mark \default
        r8 a16 h cis8 h16 d ~ d8 cis h a |
        a16( gis a8 ~ a4) a8 a h( d) |
        cis8 a16 h cis8 h16 d ~ d8 cis h a |
        a16( e fis8 ~ fis4) d'8 cis h( a) |
        a1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f   
        fis1:m | a |
        fis1:m | a |
        fis2:m d | fis:m d |
        e1 |
        
        a2 e/gis | fis2:m d4 e |
        a2 e/gis | fis2:m d4 e |
        a1 |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
Kad sam ću -- o po -- ziv tvoj __ _ go -- spo -- de __
ne ra -- zmi -- šljah ni mi -- nu -- tu ja -- vih se __
i ne -- što __ _ se ču -- dno _ zbi -- lo __ _ u me -- ni __ ne -- znam što __
}

lyricsATwo = \lyricmode {
Ti mi nu -- diš svo -- ju lju -- bav da -- ni -- ma __
ti mi nu -- diš svo -- ju lju -- bav no -- ći -- ma __
i sve je ka -- o rije -- ka __ du -- bo -- ko __ _ i vije -- čno __ go -- spo -- de __
}

lyricsAThree = \lyricmode {
Pro -- bo -- li su tvo -- je ve -- ne go -- spo -- de __
a u nji -- ma ži -- vot vije -- čni za me -- ne __
i sve je ta -- ko fi -- no __ "" ne -- mo -- gu -- če di -- vno __ go -- spo -- de __
}

lyricsB = \lyricmode {
Ne -- ka sad o -- dje -- kne na -- ša riječ __ a -- le -- lu -- ja
ne -- ka zna -- ju svi da sla -- vim te __ a -- le -- lu -- ja. 
}

\score {
<<
        \new ChordNames { \romanChords \transpose a c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
        \addlyrics { \lyricsAThree }
        
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 80 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
