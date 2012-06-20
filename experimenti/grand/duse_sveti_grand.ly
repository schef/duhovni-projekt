\version "2.14.1"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
        title = "DUŠE SVETI, DOBRODOŠAO"
        subtitle = ""
        composer = "BRUNO I VESNA LICENDER"
        poet= "TEST | TEST"
        copyright = "Copyright Information"
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key g \major
	\mark \default
	\repeat volta 2 { 
        d'8 d16 d ~ d d8. e8 d16 c ~ c h8 d16 ~ |
        d1 |
        e8 e16 e ~ e g8. fis8 g16 a ~ a fis8 d16 ~ |
        d2 ~ d8.[ d16] d d8 e16 ~ |
        e8. e16 e e8 fis16 ~ fis4 fis16 fis fis fis ~ |
        fis4 fis16 g a a(  g4) g8 a16 h ~ |
        h8 g8 ~ g4 a8 g16 fis16 ~ fis a8 g16 ~ |	
	}
	
	\alternative {
		{g1}
		{r2 r4}
	}
	\bar "||" \break
}

scoreB = \relative c' {
	\bar "|:"
	\mark \default
	g''8 a16 h ~ |
        h8 g8 ~ g2 g8 a16 h ~ |
        h8 g8 ~ g2 g8 a16 h ~ |
        h8 g8 ~ g4 a8[ g16 fis] ~ fis a8 g16 ~ |
        g2. |
        \bar ":|"
}

chordsA = \chordmode {
	g1 | g | c2 d2 | g1 |
        c2 d2 | h2:m e2:m | c2 d2 | g1 | g1 | 
}

chordsB = \chordmode {
        c1 | e:m | c2 d2 | g2. |
}

lyricsAOne = \lyricmode {
Du -- še Sve -- ti, do -- bro -- do -- ša -- o
Du -- še Sve -- ti, do -- bro -- do -- ša -- o
U o -- vaj hram, u o -- vaj dom
Ov -- dje nek’ sve bu -- de po tvom
Du -- še Sve -- ti, do -- bro -- do -- ša -- o
}

lyricsB = \lyricmode {
Du -- še Sve -- ti, Du -- še Sve -- ti
Du -- še Sve -- ti, mi te tre -- ba -- mo
}

lyricsATwo = \lyricmode {
Du -- še Sve -- ti, mi te tre -- ba -- mo
Du -- še Sve -- ti, mi te tre -- ba -- mo
U o -- ve da -- ne, go -- di -- ne
Za zad -- nju že -- tvu sprem -- lje -- ne
Du -- še Sve -- ti, mi te tre -- ba -- mo
}

\score {
<<
        \new ChordNames { \romanChords \transpose g c { \chordsA \chordsB } }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
>>
}

