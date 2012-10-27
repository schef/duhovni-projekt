\version "2.14.2"

\header {
title = "SVE ŠTO DIŠE"
composer = "MATT REDMAN" 
subtitle = "\"EVERYTHING THAT HAS BREATH\""
poet = "TEST | TEST" 
copyright = "\"Everything That Has Breath\" by Matt Redman Copyright © 1997 Thankyou Music" 
}

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"
\include "config_grand.ly"

%NOTE
scoreA = \relative c' {
	\key e \major
	\mark \default
	r4 gis'8 gis fis4 e |
	r4 gis8 gis fis4 e |
	r4 gis8 gis fis4 e |
	a4 gis gis fis8 e |
	\bar ":|"
	r1 | r1 |
	\bar "||"
}

scoreB = \relative c' {
	\mark \default
	r8 h'8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h h cis h h16 h8 e,16 ~ |
	e4 r4 r2 |
	r8 h'8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h h cis h h16 h8 e,16 ~ |
	e4 r4 r4 r8 e8 |
	\mark \default
	fis4 gis fis gis |
	h4 gis fis2 |
	fis4 gis fis gis |
	h4 gis fis2 |
	fis4 gis fis gis |
	h4 gis fis e |
	cis'1 |
	r1 |
	\bar "||" \break
}

%AKORDI
chordsA = \chordmode {
	e | h/dis | cis:m | a2 h2 |
	fis1:m | fis:m |
}

chordsB = \chordmode {
	e1 | h/dis | cis:m | a |
	e1 | h/dis | cis:m | a |
	fis:m | e/gis | fis:m | e/gis |
	fis:m | e/gis | a | a |
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sve što di -- še, sve što di -- še, sve što di -- še 
Ne -- ka sla -- vi te
}

lyricsBOne = \lyricmode {
Sla -- vim te u -- ju -- tro sla -- vim te na -- ve -- čer
U mla -- do -- sti i sta -- ro -- sti
Sla -- vim te smije -- \skip8 hom
I tu -- žan sla -- vim te
Pro -- sla -- vljam te -- be za -- u -- vijek

Kad spo -- zna -- li bi tvo -- ju moć
Sna -- gu lju -- bav bes -- kraj -- nu
Za -- u -- vijek bi te -- be sla -- vi -- li
}

lyricsBTwo = \lyricmode {
Sla -- ve -- te an -- đe -- li, ne -- be -- sa sla -- ve -- te
Sla -- ve te u -- vijek za -- u -- vijek
I ze -- mlja sla -- vi te
Sa svim stvo -- re -- nji -- ma
Sla -- ve te na -- ro -- di \skip8 svi
}

lyricsATwo = \lyricmode {
Ja ću slavi -- ti, ja ću slavi -- ti
Svim što i -- mam te -- be sla -- vi -- ti
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c { \chordsA \chordsB } }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsBOne }
	\addlyrics { \lyricsATwo \lyricsBTwo }
>>
}
