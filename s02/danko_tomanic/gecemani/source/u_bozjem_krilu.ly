\version "2.17.29"

\header {
title = "U BOŽJEM KRILU"
composer = "DANKO TOMANIĆ"
bpm = "76"
style = "RUSKA"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key e \minor
        \time 6/8
	\mark \default
	g8 fis e e fis g |
        a4 g8 fis4( fis8) |
        fis8 e dis e\( e\) fis |
        g4. r4. |
        g8\( fis\) e e fis g |
        a4 g8 fis4. |
        fis8\( dis\) h g'\( g\) fis |
        e4. r4. |
        
        \once \override Score.RehearsalMark.X-offset = #-1.7
        \once \override Score.RehearsalMark.Y-offset = #-1.4
        \mark \default
        c'8. c16 c8 c d e |
        h4 a8 g4\( g8\) |
        a4 g8 fis g a |
        a8( \stemUp h4) r4. |
        c8. c16 c8 c d e |
        h4 a8 g4\( g8\) |
        a8 fis h, g'4 fis8 |
        e4. r4. |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t
        e8*6:m | a:m | h:7 | e:m |
        e8*6:m | a:m | h:7 | e:m |
        
        a8*6:m | e:m | h:7 | e8*3:m e:7/gis |
        a8*6:m | e8*3:m c | a:m h:7 | e8*6:m |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
Te -- bi sam pre -- da -- o ra -- ne sve __
sve svo -- je po __ _ -- ljub -- ce 
te -- bi sam te ru -- ke pru -- ži -- o
to si za -- slu __ _ -- ži -- o
}

lyricsATwo = \lyricmode {
U tvo -- jim kon -- ci -- ma ži -- vot moj __
u sr -- cu mi i -- sus krist
i __ _ dok slu -- šam tih pti -- ca poj
e -- _ vo pi -- šem ti stih

Vo -- di me o -- će moj ne -- be -- ski
ti po -- zna -- ješ taj -- ne sve __
vo -- di me o -- će moj ne -- be -- ski __ _
što bih ja bez te -- be.
}

lyricsAThree = \lyricmode {
Te -- bi sam pre -- da -- o lju -- bav svu __
sve svo -- je da -- le -- ke sne
tvo -- ju sam pri -- ma -- o ve -- če -- ru
ni -- kad ne o -- stav -- ljaj me

Vo -- di me o -- če moj ne -- be -- ski __ _
ti to je -- di -- ni znaš __
vo -- di me o -- če moj ne -- be -- ski
ti vjer -- ni -- ma pri -- pa -- daš.
}

lyricsBOne = \lyricmode {
Vo -- di me o -- če moj ne -- be -- ski __ _
ti to je -- di -- ni znaš __
vo -- di me o -- če moj ne -- be -- ski __ _
ti svi -- me u -- pra -- vljaš.
}

\score {
<<
        \new ChordNames { \romanChords \transpose g c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsBOne }
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
\midi { \tempo 4 = 76 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
