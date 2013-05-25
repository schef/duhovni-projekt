\version "2.14.2"

\header {
	title = "SRCE PREDAJEM TI"
	subtitle = "\"I GIVE YOU MY HEARTH\""
	composer = "REUBEN MORGAN"
	poet= "TEST | TEST"
	copyright = "Copyright Information"
}

\include "deutsch.ly"
\include "config_grand.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

scoreA = \relative c'' {
	\key g \major
	\mark \default
	g8 g4 g8 ~ g4 a8 h ~ | h8 g4. r4. g8 | c2 h4. a8 ~ | a4 r2. | %phrase01
	g4 fis8 g ~ g4 a8 h ~ | h4 r8 g8 g8 a4 a8 ~ | a2 r2 | r1 | %phrase02
	g4 g8 g ~ g4 a8 h ~ | h8 g4. r4. g8 | c2 h4. a8 ~ | a4 r2. | %phrase03
	g4 fis8 g ~ g4 a8 h ~ | h4 r4 %phrase04
	g8 a4 a8 ~ | a2 r2 | r1 | %phrase05
	\bar "||"
}

scoreB = \relative c'' {
%	\once \override Score.RehearsalMark #'Y-offset = #-2.3
	\mark \default
	r4 h8 h h a g a ~ | a4 r8. %phrase06
	a16 h8 a16 a ~ a8 a\( ~ | a8 g g4\) r4. %phrase07
	c8 | c4 h a g8 h ~ | h4 %phrase08
	h8 h h g16 a ~ a8 a ~ | a4 r8 %phrase09
	d,16 d h'8 a16\( a ~ a8 g ~ | g4\) r4 r4 r8 %phrase10
	c8 | c4 h a g8 g ~ | g1 | %phrase11
	\bar "|."
}

chordsA = \chordmode {
	g2 g:maj | g/e g:maj/e | c g/d | d:sus4 d |
	g/e g:maj/fis | g1 | f | d:sus4 |
	g2 g:maj | g/e g:maj/e | c g/d | d:sus4 d |
	g/e g:maj/fis | g1 | f | d:sus4 |
}

chordsB = \chordmode {
%	\set chordChanges = ##f
%	\once \override ChordNames.ChordName #'X-offset = #1
	g1 |
%	\set chordChanges = ##t
	d | a:m | d | g | d | a:m | d | g |
}

lyricsA = \lyricmode {
U me -- ni je če -- žnja da štu -- jem te %text01
Go -- spo -- de svim sr -- cem te pro -- sla -- vljam %text02
Svim što je u me -- ni čast da -- jem ti %text03
Sve što o -- bo -- ža -- vam %text04
u te -- bi je %text05
}

lyricsB = \lyricmode {
Sr -- ce pre -- da -- jem ti  %text06
I du -- šu svo -- ju %text07
Ži -- vim za te -- be %text08
Ne -- ka sva -- ki moj dah %text09
Sva -- ki tren ži -- vo -- ta mog  %text10
Bu -- de za te -- be %text11
}

\score {
<<
	\new ChordNames { \romanChords \transpose g c { \chordsA \chordsB } }
	\new ChordNames { \jazzChords \chordsA \chordsB }
	\new Staff { \scoreA \scoreB }
	\addlyrics { \lyricsA \lyricsB }
>>
}
