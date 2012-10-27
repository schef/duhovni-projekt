\version "2.14.2"

\header {
title = "VOLIM TE" 
subtitle = ""
composer = "MARIJA LACKOVIĆ"
poet = "TEST | TEST" 
copyright = "Copyright Information ©" 
}

\include "deutsch.ly"
\include "config_grand.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

%NOTE
scoreA = \relative c' {
	\key a \major
	\mark \default
	r4 e'8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 cis2 |
	h1 |
	r4 e8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 e2 |
	e2.
}

scoreB = \relative c' {
	gis''8 a ~ |
	\mark \default
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 gis2 |
	e1 |
	fis2 a2 |
	gis2. gis8 a ~|
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 h |
	a1 |
	fis2 a |
	gis1 |	
	\bar "||" \break
}

scoreC = \relative c' {
	\mark \default
	a''2 gis |
	e1 |
	a2 gis |
	e1 |
	a2 gis |
	e1 |
	fis2 a |
	gis1	
	\bar ":|"
}

%AKORDI
chordsA = \chordmode {
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e |
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e1 |
}

chordsB = \chordmode {
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
}

chordsC = \chordmode {
	a1 | a | e/gis | e/gis |
	fis1:m | d | h:m | e
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sla -- va, sla -- va te -- bi, O -- če
Stvo -- ri -- te -- lju sve -- mi -- ra i ze -- mlje sve, ze -- mlje sve
Sla -- va, sla -- va te -- bi, O -- če
Što to -- li -- ko lju -- bi -- o si cije -- li svijet, cije -- li svijet
}

lyricsB = \lyricmode {
Pje -- vam, u vi -- si -- nu pru -- žam ru -- ke
Po -- di -- žem svoj glas da ču -- ju svi da si naj -- ve -- ći
Ple -- šem, jer me ra -- dost i -- spu -- nja -- va
Sr -- ce vje -- ru -- je i je -- zik pri -- zna -- je: Vo -- lim te
}

lyricsC = \lyricmode {
Vo -- lim -- te
Vo -- lim -- te
Vo -- lim -- te
Vo -- lim -- te
}

lyricsATwo = \lyricmode {
Sla -- va, sla -- va te -- bi, Kri -- ste
Za sve što u -- či -- ni -- o si za me -- ne, za me -- ne
Sla -- va, sla -- va te -- bi, Kri -- ste
Što u te -- bi i -- mam ži -- vot, i -- mam sve, i -- mam sve
}

\score {
<<
        \new ChordNames { \romanChords \transpose a c { \chordsA \chordsB \chordsC } }
        \new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
        \new Staff { \scoreA \scoreB \scoreC }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
	\addlyrics { \lyricsATwo }
>>
}
