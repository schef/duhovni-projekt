\version "2.14.2"

\include "deutsch.ly"
\include "config_grand.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

\header {
    title = "OBASJAJ NAS"
    composer = "ALBERT FREY"
    poet = "TEST | TEST" 
}
%#(define brojPjesme "345" )
%#(define brojStraniceLijevo "3" )
%#(define brojStraniceDesno "4" )
%#(define copyright "\"Gnade und Wahrheit\" von Albert Frey, D&D Medien 2001 ©" )


%NOTE
scoreA = \relative c' {
	\key g \major
	\mark \default
	g'8 g g g ~ g g fis fis ~ |
	fis8 e4. r2 |
	d8 d d d ~ d e4 d8 ~ |
	d2 r4 r8 h8 |
	g'8 g g g ~ g fis4 fis8 ~ |
	fis8 e4. r2 |
	d8 d d d ~ d e4 d8 ~ |
	d2 r4 r8 d8 |
	c'8 c c c ~ c h4 h8 ~ |
	h8 a4. r2 |
	g8 g g g ~ g h4 h8 ~ |
	h2 r4 r8 g8 |
	c8 c c c ~ c h h h ~ |
	h8 a4. r2 |
	g8 g g g ~ g h4 h8 ~ |
	h2. r4 |
	\bar "||" \break
}

scoreB = \relative c' {
	%\key g \major
	\mark \default
	h'4\( a8\) a8 ~ a4 d,4 |
	h'4\( a8\) a ~ a4 r4 |
	a4\( g8\) g ~ g4 d4 |
	a'4\( g8\) g ~ g4 r4 |
	h4\( a8\) a ~ a4 d,4 |
	h'4\( a8\) a ~ a4 r8 h8 |
	c4 c8 c ~ c h4 h8 ~ |
	h2. r4 |
	h4\( a8\) a ~ a4 d,4 |
	h'4\( a8\) a ~ a4 r4 |
	a4\( g8\) g ~ g4 d4 |
	a'4\( g8\) g ~ g4 r4 |
	h4\( a8\) a ~ a4 d,4 |
	h'4\( a8\) a ~ a4 g |
	g1 |
	r1 |
	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
	e1:m | c1 | g1 | d1 |
	e1:m | c | g | d |
	a1:min7 | d | c | g |
	a1:min7 | d | c | h |
}

chordsB = \chordmode {
	a1:m7 | d2:sus4 d2 | g1 | e:m7 |
	a1:m7 | d2:sus4 d2 | dis1:dim | e:m |
	a1:m7 | d2:sus4 d2 | g1 | e:m7 |
	a1:m7 | d2:sus4 d2 | g1 | g1 |
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
I -- sti -- ni gle -- dam u o -- či,
sto -- jim u svje -- tlu tvom.
Zbog mi -- lo -- sti tvo -- je mo -- gu
pri -- mi -- ti ži -- vot nov.
Za -- cje -- lju -- ješ mo -- je ra -- ne,
znaš mo -- je sla -- bo -- sti.
Uz te -- be se vi -- še ne bo -- jim,
pje -- vam pun ra -- do -- sti.
}

lyricsB = \lyricmode {
I -- \skip8 su -- se, svije -- \skip8 tli mi -- \skip8 lo -- šću svo --  \skip8 jom.
I -- \skip8 su -- se, do -- \skip8 đi, ra -- svije -- tli ta -- mu svu.
Sr -- \skip8 ca nam mije -- \skip8 njaj mi -- \skip8 lo -- šću svo -- \skip8 jom.
I -- \skip8 su -- se, o -- \skip8 ba -- sjaj nas!
}

\score {
<<
    \new ChordNames { \romanChords \chordsA \chordsB }
    \new ChordNames { \jazzyChords \chordsA \chordsB }
    \new Staff { \scoreA \scoreB }
    \addlyrics { \lyricsAOne \lyricsB }
    >>
}
