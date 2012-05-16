\version "2.14.2"

\header {
title = "SLAVIT ĆU GOSPODA"
subtitle = "\"MADE ME GLAD\""
composer = "MIRIAM WEBSTER" 
poet = "TEST | TEST" 
copyright = "\"Made Me Glad\" by Miriam Webster Copyright © 2001 Hillsong Publishing" 
}

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"
\include "config_grand.ly"

%NOTE
scoreA = \relative c' {
	\key b \major
	\mark \default
	f4 f8 g8 ~ g2 |
	f4 es8 g ~ g b, ~ b4 |
	c4 c8 d ~ d2 |
	r2 r4 r8 b8 |
	f'4 f8 g8 ~ g2 |
	f4 es8 g ~ g b, ~ b8[ d8] ~ |
	d1 |
	r1 |
	f4 ~ f8 g8 ~ g2 |
	f4 es8[ g8] ~ g[ b,] ~ b c ~ |
	c4 c8 d ~ d2 |
	r1 |
	f4 f8 g8 ~ g2 |
	f4 es8 g ~ g4 f8 es8 |
	f8( d8 ~ d2.) |
	r1 |
	g4 g8 g ~ g a4 b8 ~ |
	b1 |
	g4 g8 g ~ g a4 b8 |
	r4
}

scoreB = \relative c' {
	a'8 b8 ~ b c4 b8 ~ |
	\mark \default
	b2 ~ b8[ a] b b ~ |
	b2 ~ b8[ a] b b ~ |
	b4. g8 ~ g[ a] b b ~ |
	b8 a4 g8 ~ g4 a8 b ~ |
	b4. f8 ~ f[ a] b b ~ |
	b4. f8 ~ f[ a]( b) b ~ |
	b8 a4 g8 ~ g a4 b8 ~ |
	b4 a8 g ~ g a4 b8 |
	b1 |
	r1 |
	\bar "|."
}

%AKORDI
chordsA = \chordmode {
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	es1 | es1 | c1:m | f1 |
}

chordsB = \chordmode {
	b1 | c:m | es | f |
	b | b/d | es | f |
	b | b |
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sla -- vit ću Go -- spo -- da za -- u -- vijek
U nje -- ga se sva -- gda u -- zda -- jem
On me stra -- ha o -- slo -- bo -- dio
Ko -- rak moj on je u -- čvr -- sti -- o
Ne po -- sus -- ta -- jem
Pje -- vam Go -- spo -- du
}

lyricsB = \lyricmode {
Ti moj si štit sna -- ga sva
Sve što tre -- bam O -- slo -- bo -- di -- telj
Moj za -- klon sna -- žna ku -- la
Po -- moć u -- vijek do -- stup -- na u po -- tre -- bi
}

lyricsATwo = \lyricmode {
Sa -- mo te -- be i -- mam na ne -- bu
Ni -- ko -- ga dru -- gog ja ne že -- lim
Ti me ra -- du -- ješ pje -- vam Go -- spo -- du
}

\score {
<<
        \new ChordNames { \romanChords \transpose b c { \chordsA \chordsB } }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsB }
	\addlyrics { \lyricsATwo }
>>
}
