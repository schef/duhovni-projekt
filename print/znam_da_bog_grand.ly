\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
	title = "ZNAM DA BOG SAD OVDJE PREBIVA"
	subtitle = "\"SWEET SWEET SPIRIT\""
	composer = "DORIS AKERS"
	poet= "TEST | GOSPEL"
	%copyright = "Copyright Information"
        tagline = ""
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key g \major
	\mark \default
	\partial 2
	h4 c4 |
	d2 d2 |
	e4 d2 g8 a8 |
	h1 ~ |
	h2 h4 d |
	c4. c8 h4 a |
	g8( e8) d2 fis8 a |
	h8( a g2. ~ |
	g2)  r2 |
}

scoreB = \relative c' {
	\mark \default
%	\once \override Score.RehearsalMark #'Y-offset = #-1.7
	d'2 h4 e |
	d8( cis) d2. |
	d2 h8 h e4 |
	d1 |
	h2 h4. h8 | 
	h8 a g2. |
	h8 a8 g2 g8 h |
	a1 |
	d2 h4 e |
	d8( cis) d2 ~ d8 a |
	h4 h h4. h8 |
	h8( a g4.) g8 g a |
	h4 a8 g ~ g g g a |
	h4 a8 g ~ g4. a8 |
	h4 h g a |
	g2 h4 d |
	c8 c ~ c4 h4 a |
	g8( e) d2 fis8 a |
	h8( a g2. |
	g1 |
	g4) r4 r2 |
	\bar "|."
}


chordsA = \chordmode {
	s2 |
	g1 | c4 g2. |
	g2 h2:m7.5-/f |
	e1:7 |
	a2:m g4/h c |
	g2/d d |
	g c:m |
	g d |
}

chordsB = \chordmode {
%	\set chordChanges = ##f
%	\once \override ChordNames.ChordName #'X-offset = #1
	g1 |
%	\set chordChanges = ##t
	g | g | g | g2 h:7/fis |
	e1:m | a1 | d | g | g | g2 h:7 |
	e4:m d4 c2 | g4 h8:7/fis e8:m e2:m |
	g4 h8:7/fis e8:m e2:m | a2 d |
	g1 | a2:m e4:7 a:m |
	g2/d d | g1 | c:7 | g |
}

lyricsAOne = \lyricmode {
Znam da Bog sad o -- vdje pre -- bi -- va
Znam da pri -- su -- tan je Du -- hom svo -- jim on

}

lyricsATwo = \lyricmode {
Sva su li -- ca o -- draz ra -- do -- sti
Od -- sjaj nje -- go -- ve bo -- žan -- ske svje -- tlo -- sti
}

lyricsB = \lyricmode {
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
