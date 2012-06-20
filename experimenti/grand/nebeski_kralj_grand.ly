\version "2.14.2"

\include "deutsch.ly"
\include "../jazzChords_grand.ly"
\include "../romanChords_grand.ly"

\header {
        title = "NEBESKI KRALJ"
        subtitle = ""
        composer = "BRUNO I VESNA LICENDER"
        poet= "256 BPM | ROCK"
        copyright = "Copyright ©"
}

\include "../config_grand.ly"

scoreA = \relative c' {
	\key g \major
	\mark \default
	r8 e8 g8[ e] g[ g] g4 |
	r8 g8 h8[ g] g8 g8 fis4 |
	r8 d'4 d8 d[ c] h[ a] |
	a1 |
	r8 e8 g8[ e] g[ g] g4 |
	r4 h8[ g] g8[ fis] fis4 |
	r8 d'8 d8[ d] d[ c] h[ a] |
	a1 |
	r4 r8 a8 h c4 d8 ~ |
	d1 |
	r4 r8 d8 ~ d8[ c] h d |
	h4. a8 ~ a2 |
	r2 h8 c4 d8 ~ |
	d1 |
	r8 e8 e[ d] e8 e4 d8 |
	e8 d4 d8 ~ d2 |
	\bar "||" \break
}

scoreB = \relative c' {
	\key a \major
	\mark \default
	r4 e'4 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r2 e8[ e] cis fis |
	e1 |
	r2 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r2 e8[ e] cis fis |
	e1 |
	r4 e4 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r4 r8 e8 e[ e] cis fis |
	e1 |
	r2 e8[ d] cis h ~ |
	h8 cis4. ~ cis2 |
	r4 a8[ a] a[ a] fis h |
	a1 |
}

scoreC = \relative c' {
	\key g \major
	\mark \default
	r2 h'4 d |
	e d8 d ~ d h4 h8 ~ | 
	h a g2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h8 a ~ a2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h a g4 \times 2/3 {h a g} |
	a4 g8 g ~ g2 |
	r1 |
	\bar "|." \break
}

chordsA = \chordmode {
	e2:m c2 | g d | e:m c | d1 |
	e2:m c | g d | e:m c | d1 |
	a1:m | d | a:m | d |
	a1:m | d | c | d |
}

chordsB = \chordmode {
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
}

chordsC = \chordmode {
	g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
On vo -- li gle -- da -- ti \skip 8 mo -- je li -- \skip 8 ce
Bo -- ju mo -- jih o -- či -- ju
I -- skre -- ni o -- smje -- si, ža -- rke mo -- li -- tve
Nje -- go -- vo sr -- ce do -- ti -- ču

A sr -- ce zna
Ti si mo -- ja lju -- bav, I -- su -- se
U sno -- ve svo -- je po -- ve -- di me
}

lyricsB = \lyricmode {
Moj Ne -- be -- ski Kralj vla -- dar je sve -- ga
Ze -- mlja i Ne -- bo nek' sla -- ve nje -- ga
Moj Ne -- be -- ski Kralj po -- bje -- đu -- je u -- vijek
Vla -- da u sla -- vi ju -- čer, da -- nas, za -- u -- vijek
}

lyricsC = \lyricmode {
I
}

lyricsATwo = \lyricmode {
Tvo -- ja do -- bro -- ta me na lju -- bav po -- ti -- če
Že -- lim bi -- ti ka -- o ti
Ru -- ka i -- spru -- že -- na pre -- ma sva -- ko -- me
\skip 8 U -- vijek spre -- mna po -- mo -- ći
}

\score {
<<
        \new ChordNames { \romanChords \transpose g c { \chordsA } \transpose a c { \chordsB } \transpose g c { \chordsC } }
        \new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
        \new Staff { { \scoreA \scoreB \scoreC } }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
        \addlyrics { \lyricsATwo }
>>
}

