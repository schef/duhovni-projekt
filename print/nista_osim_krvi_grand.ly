\version "2.14.2"

\include "deutsch.ly"
\include "../jazzChords_grand.ly"
\include "../romanChords_grand.ly"

\header {
        title = "NIŠTA OSIM KRVI"
        subtitle = "\"NOTHING BUT THE BLOOD\""
        composer = "MATT REDMAN"
        poet= "256 BPM | ROCK"
        copyright = "\"Nothing But The Blood\" by Matt Redman, Copyright ©"
}

\include "../config_grand.ly"

scoreA = \relative c' {
	\key d \major
	\mark \default
	\partial 8
	\repeat volta 2 { 
	d16 e | \bar "|:"
	fis2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis2 a8 a16 h ~ h g8 fis16 ~ |
	fis2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis2 a8 g16 fis ~ fis g8 e16 ~ |
	e2 a8 g16 fis ~ fis g8 g16 ~ |
	g2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis1 |
}
	\alternative {
		{r2 r4 r8 e8}
		{r1}
	}
	\bar "||" \break
}

scoreB = \relative c' {
	\mark \default
	e'8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e4. fis8 fis2 |
	r1 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e4. d8 d2 |
	r1 |
	\bar "|." \break
}

scoreC = \relative c' {
	\mark \default
	a''8 fis fis e fis2 ~ |
	fis1
	a8 fis fis e fis2 ~ |
	fis1
	e8 e e fis e d ~ d4 |
	e8 e e fis e d ~ d4 |
	e4. d8 d2 |
	r1 |
	\bar "|." \break
}

chordsA = \chordmode {
	\skip8
	d1 | h:m | d | h:m |
	a | g | d | d | d |
}

chordsB = \chordmode {
	d1 | d | h:m | h:m | 
	a | g | d | d |
	d | d | h:m | h:m |
	a | g | d | a2 g2 |
}

chordsC = \chordmode {
	d1 | d1 | h:m | h:m
	a | g | d1 | d1
}

lyricsAOne = \lyricmode {
Tvo -- ja krv vi -- še go -- vo -- ri
Od svih va -- pa -- ja, pra -- znih, ze -- malj -- skih
O -- prav -- da -- va me, od sveg bra -- ni me
Kri -- ste, tvo -- ja krv
}

lyricsB = \lyricmode {
\skip8 Što će grije -- he o -- pra -- ti
O -- pet nas is -- pu -- ni -- ti
Ni -- šta o -- sim kr -- vi
Ni -- šta o -- sim kr -- vi Kri -- sto -- ve
Što me či -- ni pot -- pu -- nim
Pri -- ja -- te -- ljem Gos -- pod -- njim
Niš -- ta o -- sim kr -- vi
Tvo -- je kr -- vi, Kra -- lju I -- su -- se
}

lyricsC = \lyricmode {
Hva -- la ti za krv
Hva -- la ti za krv
Ni -- šta o -- sim Kr -- vi
Tvo -- je kr -- vi, Kra -- lju I -- su -- se
}

lyricsATwo = \lyricmode {
\skip8 \skip8 križ mi -- lost svje -- do -- či
"O sr" -- cu O -- če -- vu "što put" nam pri -- pra -- vi
Hra -- bro kro -- čim sad, u si -- gur -- no -- sti
"Zbog kr" -- vi Kri -- sto -- ve Tvoj
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c { \chordsA \chordsB \chordsC } }
        \new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
        \new Staff { { \scoreA \scoreB \scoreC } }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
        \addlyrics { \lyricsATwo }
>>
}
