\version "2.14.2"

\include "deutsch.ly"
\include "../jazzChords_grand.ly"
\include "../romanChords_grand.ly"

\header {
        title = "OTVORI OČI MOG SRCA"
        subtitle = "\"OPEN THE EYES OF MY HEART, LORD\""
        composer = "PAUL BALOCHE"
        poet= "256 BPM | ROCK"
        copyright = "\"Open The Eyes of My Heart, Lord\" by Paul Baloche, Copyright ©"
}

\include "../config_grand.ly"

scoreA = \relative c' {
	\key g \major
	\mark \default
	\repeat volta 2 { 
	h'8 d d d4 h8 d8 d ~ |
	d h ~ h4 r2 |
	h8 d d d4 h8 e d ~ |
	d2 \times 2/3 {h4 a g} |
	a4 g8 g ~ g2 |
	r2 \times 2/3 {h4 a g} |
	a g8 g ~ g2 |
	
}
	\alternative {
		{r1}
		{r2 \breathemoj h4 d |}
	}
}

scoreB = \relative c'' {
	d h8 d8 ~ d[ e] ~ e[ e] ~ | 
	e2 r2 |
	e8[ d] d[ h] e[ d] h[ h] ~ |
	h8 a ~ a4 r2 |
	h8 d4 h8 d[ h] d[ e] ~ |
	e4. h8 h[ h] d4 |
	e d8[ d] ~ d h4 h8 ~ |
	h[ a] ~ a2. |
	r1 |
	\bar "||"	
}

scoreC = \relative c' {
	\mark \default
	e'4 d8 d ~ d h4 h8 ~ | 
	h a( g2.) |
	e'4 d8 d ~ d h4 h8 ~ |
	h8 a ~ a2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h a( g4) \times 2/3 {h a g} |
	a4 g8 g ~ g2 |
	r1 |
	\bar "|."	
}

chordsA = \chordmode {
	g1 | g | d/fis | d/fis |
	c/e | c | g | g | g |
}

chordsB = \chordmode {
	d1 | e:m | c | d | 
	d | e:m | a:m | d | d |
}

chordsC = \chordmode {
	g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
O -- tvo -- ri o -- či mog sr -- ca
O -- tvo -- ri, Go -- spo -- de, ti
Že -- lim te vi -- dje -- ti
Že -- lim te vi -- dje -- ti
}

lyricsB = \lyricmode {
Vi -- djet te -- be i -- znad svih
O -- ba -- sja -- nog svje -- tlo -- šću sla -- ve
Ti i -- zlij lju -- bav na nas
Dok pje -- va -- mo: sve -- ti, sve -- ti, sve -- ti
}

lyricsC = \lyricmode {
Sve -- ti, sve -- ti, sve -- ti
Sve -- ti, sve -- ti, sve -- ti
Sve -- ti, sve -- ti, sve -- ti
Že -- lim te vi -- dje -- ti
}

lyricsATwo = \lyricmode {
O
}

\score {
<<
        \new ChordNames { \romanChords \transpose g c { \chordsA \chordsB \chordsC } }
        \new ChordNames { \transpose g e { \jazzChords \chordsA \chordsB \chordsC } }
        \new Staff { \transpose g e { \scoreA \scoreB \scoreC } }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
        \addlyrics { \lyricsATwo }
>>
}
