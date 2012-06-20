\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
	title = "TI SVJETLO SVIJETA"
	subtitle = "\"LIGHT OF THE WORLD\""
	composer = "TIM HUGES"
	poet= "TEST | TEST"
	copyright = "Copyright Information"
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key e \major
	\mark \default
	gis'4 gis8 a fis4 fis8 gis | %1
	a4 a8 gis fis e e4 |
	gis4 gis8 a fis4 fis8 gis ~ |
	gis8 e ~ e4 r2 |
	gis4 gis8 a fis4 fis8 gis |
	a4\( a8\) gis fis( e) e4 | %6
	gis4 gis8 a fis4 fis8 gis ~ |
	gis8 e ~ e4 r2 |
	\bar "||"
}

scoreB = \relative c' {
	\once \override Score.RehearsalMark #'Y-offset = #-2.3
	\mark \default
	r2 a'8 gis gis fis | %9
	gis4 gis a8 gis gis fis |
	fis4 fis a8 gis gis fis |
	gis4 gis gis8 h4 e,8 ~ |
	e4 r4 a8 gis gis fis |
	gis4 gis a8 gis gis fis | %14
	fis4 fis a8 gis gis fis |
	gis4 gis gis8 h4 e,8 ~ |
	e4 r2. |
	\bar "||"
}

scoreC = \relative c' {
	\once \override Score.RehearsalMark #'Y-offset = #-2.7
	\mark \default
	r2. e8 fis ~ |
	\repeat volta 2 {
	fis4 fis8 gis ~ gis4 h8 a ~ |
	a gis ~ gis fis ~ fis4 e8 fis ~ |
	fis4 fis8 gis ~ gis4 h8 a ~ |
	}
	\alternative {
	{a8 gis ~ gis fis ~ fis4 e8 fis\laissezVibrer |}
	{a8 gis ~ gis fis ~ fis2 |}	
	}
}

scoreD = \relative c' {
	\mark \default
	r16 gis'16 gis gis gis8 gis16 fis gis8 a gis8. gis16 ~ |
	gis16 gis8 fis16 gis8 gis16 fis gis8 a gis8. gis16 ~ |
	gis16 gis8 fis16 gis8 gis16 fis gis4 gis16 a8. ~ |
	a8 gis ~ gis2. |
	\bar "|."
}
chordsA = \chordmode {
	e2 h | fis1:m | e2 h2 | a1 |
	e2 h | fis1:m | e2 h2 | a1 |
}

chordsB = \chordmode {
	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	a1 |
	\set chordChanges = ##t
	e1 | h/dis | e/gis | a |
	e | h/dis | e/gis | a |
}

chordsC = \chordmode {
	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	a1 |
	\set chordChanges = ##t
	h2/dis e/gis |
	a1 | h2/dis e/gis |
	a1 | a1 |
}

chordsD = \chordmode {
	\once \override ChordNames.ChordName #'X-offset = #1
	e1 | h/dis | gis:m | a |
}

lyricsAOne = \lyricmode {
Ti svje -- tlo svije -- ta u ta -- mu si do -- ša -- o
O -- či mi o -- tvo -- ri -- o
Sr -- ce mi o -- ba -- sja tvo -- ja lje -- po -- ta
Sva mo -- ja na -- da si ti
}

lyricsB = \lyricmode {
Tu sam da te sla -- vim
Da ti se po -- klo -- nim
Tu sam da ti pri -- znam
Ti si Bog
Sa -- mo ti si vrije -- dan 
Sa -- mo ti si sla -- van
Pre -- di -- van si u ži -- vo -- tu mom
}

lyricsATwo = \lyricmode {
Kra -- lju naš vje -- čni nad svi -- ma si u -- zvi -- šen
Stvo -- ri -- telj sve -- ga si ti
U svijet si do -- ša -- o jer nas lju -- biš
Si -- ro -- mah si po -- sta -- o
}

lyricsC = \lyricmode {
Ja ni -- kad ne -- ću shva -- ti -- ti
Tu cije -- nu o -- tku -- plje -- nja mog.
}

\score {
<<
	\new ChordNames { \romanChords \transpose e c { \chordsA \chordsB \chordsC \chordsD } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC \chordsD }
	\new Staff { \scoreA \scoreB \scoreC \scoreD }
	\addlyrics { \lyricsAOne \lyricsB \lyricsC }
	\addlyrics { \lyricsATwo }
>>
}
