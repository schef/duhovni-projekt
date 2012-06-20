\version "2.14.2"

\include "deutsch.ly"
\include "../jazzChords_grand.ly"
\include "../romanChords_grand.ly"

\header {
	title = "NAJVEĆI DAR"
	subtitle = "\"GREATEST GIFT\""
	composer = "M. REDMAN I P. WILSON"
	poet= "256 BPM | ROCK"
	copyright = "\"Greatest Gift\" by Matt Redman & Peter Wilson, Copyright © 2006"
}

\include "../config_grand.ly"

scoreA = \relative c {
	\key d \major
	\mark \default
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	h4 a d,2 |
	h'4 a d, ~ d8. d16 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	fis8[ fis] fis[ d] e fis16 fis ~ fis4 |
	h4 a d,2 |
	h'4 a d,4. a'8 |
	d8[ d] cis[ cis] a4. fis8 |
	g8 a a4 ~ a4. a8 |
	d8[ d] cis[ cis] a4. fis8 |
	\time 2/4 g8 a a4 ~ |
	\override Staff.TimeSignature #'style = #'()
	\time 4/4 a2. \breathemoj a16 h d8 ~ |
}

scoreB = \relative c' {
	d4 e d a |
	d8 cis4 d8( ~ d e4.) |
	e8[ d] cis cis ~ cis2 |
	es8[ d] cis cis ~ cis4 a16 h d8 ~ |
	d4 e d a |
	d8 cis4 d8 ~ d e4 e8 |
	e8[ d] cis cis ~ cis2 |
	es8[ d] cis cis ~ cis8 d4 cis8 ~ |
	cis1 |
}

scoreC = \relative c {
	\mark \default
	\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
	r4 r8 d'16 e fis8 e16 d ~ d16 e8 fis16 ~ |
	fis4 r8 d16 e16 fis8 e16 d ~ d16 e8 fis16 ~ |
	fis4 r8 d16 e16 fis8 e16 d ~ d16 e8 d16 ~ |
	d1 |
	\bar "|."
}

chordsA = \chordmode {
	d1 | a/cis | g | e:m |
	d1 | a/cis | e:m | g |
	e2:m d2/fis | g1 | e2:m d2/fis | c | a1 |
}

chordsB = \chordmode {
	d1 | e | g | g:m |
	d1 | e | g | g:m | d |
}

chordsC = \chordmode {
	g1:m | h:m | fis:m | g |
}

lyricsAOne = \lyricmode {
Ne -- ma vi -- še po -- su -- de
sve su kriv -- nje ne -- sta -- le
Sad sam čist
sad sam čist
U me -- ni snaž -- no dje -- lu -- ješ
Lo -- miš lan -- ce kriv -- nju sram
Po -- sta -- jem slo -- bo -- dan
Pod križ ih do -- no -- sim
i o -- stav -- ljam
O -- bu -- zet mi -- lo -- šću o -- slo -- bo -- đen
}

lyricsB = \lyricmode {
To je tvoj spa -- se -- nja ve -- lik dar
Pro -- ži -- ma me 
Pro -- ži -- ma me 
To je taj ži -- vo -- ta o -- kus "s ne" -- ba
Do -- bro -- ta mi se tvo -- ja o -- bja -- vi -- la 
}

lyricsC = \lyricmode {
O -- vo naj -- ve -- ći je dar
O -- vo naj -- ve -- ći je dar
O -- vo naj -- ve -- ći je dar
}

lyricsATwo = \lyricmode {

}

\score {
<<
        \new ChordNames { \romanChords \transpose d c { \chordsA \chordsB \chordsC } }
        \new ChordNames { \jazzChords \transpose d h { \chordsA \chordsB \chordsC } }
        \new Staff { \transpose d h { \scoreA \scoreB \scoreC } }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
%        \addlyrics { \lyricsATwo }
>>
}

