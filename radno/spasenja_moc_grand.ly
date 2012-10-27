\version "2.14.2"

\header {
title = "SPASENJA MOĆ"
subtitle = "\"MIGHTY TO SAVE\""
composer = "R. MORGAN | B. FIELDING" 
poet = "TEST | TEST" 
copyright = "\"Mighty To Save\" by Reuben Morgan and Ben Fielding, Copyright © 2009 Hillsong Publishing" 
}

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"
\include "config_grand.ly"

%NOTE
scoreA = \relative c' {
	\key e \major
	\mark \default
	r2 e'16 e e8 fis8 e16 e ~ |
	e8 h8 ~ h4 e16 e e8 fis8 e16 e ~ |
	e8 cis ~ cis2 r8 e8 |
	e4 dis4 \times 2/3 {dis cis cis ~} |
	cis4 r4 e16 e e8 fis8 e16 e ~ |
	e8 h ~ h8. e16 e8 e fis e16 e ~ |
	e8 cis8 ~ cis2. |
	e4 dis \times 2/3 {dis e e ~} |
	e1 |
	r1 |
	\bar "||" \break
}

scoreB = \relative c' {
	\mark \default
	e'4 e e8[ e] e fis |
	fis4 fis4. fis8 fis[ e] |
	gis[ a] gis[ e ~] e4 e8 fis |
	gis[ a]	gis[ fis ~] fis4. e8 |
	e4 e e8[ e] e fis |
	fis4 fis4. fis8 fis[ e] |
	gis[ a] gis[ e ~] e e e[ fis] |
	gis[ a]	gis[ fis ~] fis2 |
	\bar "||" \break
}

scoreC = \relative c' {
	\mark \default
	r8 a''16 gis a8 gis r8 gis16 fis gis8 fis ~ |
	fis8 fis4. ~ fis4 fis16 gis8. |
	r8 a16 gis a8 gis r8 gis16 fis gis8 h ~ |
	h8 fis4. ~ fis2 |
	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
	a1 | e | cis:m | h |
	a | e | cis:m | h | a2 h2 | a2 h2 |
}

chordsB = \chordmode {
	e1 | h | cis2:m a2 | fis2:m h2 |
	e1 | h | cis2:m a2 | fis:m h |
}

chordsC = \chordmode {
	a2 e | h1 | a2 e | h1 |
}

lyricsAOne = \lyricmode {
Sa -- mi -- lost svi -- ma tre -- ba
Lju -- bav bez za -- ta -- je -- nja
Nek mi -- lost spu -- sti se

O -- prost nam svi -- ma tre -- ba
Do -- bro -- ta Spa -- si -- te -- lja
Na -- de na -- ro -- da
}

lyricsB = \lyricmode {
I -- sus
Pre -- mje -- šta pla -- ni -- ne
Bog i -- ma spa -- se -- nja moć
I -- ma spa -- se -- nja moć
Za -- u -- vijek
Tvo -- rac o -- tku -- plje -- nja
I -- sus je u -- skr -- snu -- o
On je po -- bije -- di -- o grob
}

lyricsC = \lyricmode {
Ti nam svije -- tli ne -- ka vi -- di svijet
Pje -- vaj, sve zbog sla -- ve Kra -- lja U -- skr -- slog
}

lyricsATwo = \lyricmode {
Pri -- mi me ka -- kav je -- sam
Pro -- \skip 8 ma -- ša -- je mo -- je
\skip 8 I sve stra -- ho -- ve

Ži -- \skip 8 vot svoj ću da -- ti
\skip 8 Da te u -- vijek slije -- dim
Sad se pre -- da -- jem
}

\score {
<<
        \new ChordNames { \romanChords \transpose e c { \chordsA \chordsB \chordsC } }
        \new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
        \new Staff { \scoreA \scoreB \scoreC }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
	\addlyrics { \lyricsATwo }
>>
}

