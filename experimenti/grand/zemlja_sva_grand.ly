\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
	title = "ZEMLJA SVA"
	subtitle = "\"ALL THE EARTH\""
	composer = "W. HUIRUA, A. ULUGIA, J. HAYFORD"
	poet= "TEST | TEST"
	copyright = "Copyright Information"
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key h \major
	\mark \default
	fis2. dis4 ~ |
	dis2 r2 |
	fis4 e dis cis ~ |
	cis dis fis fis ~ |
	fis2. cis4 ~ |
	cis2 r2 |
	fis4 e dis cis ~ |
	cis h dis e ~ |
	e1 |
	r2. e4 |
	dis2. cis4 ~ |
	cis2 r2 |
	h1 |
	ais1 |
	h2 ais |
	h cis |
}

scoreB = \relative c' {
	\mark \default
%	\once \override Score.RehearsalMark #'Y-offset = #-1.7
	fis2. dis4 ~ |
	dis2 r2 |
	fis4 e dis cis ~ |
	cis dis fis fis ~ |
	fis2. cis4 ~ |
	cis2 r2 |
	fis4 e dis cis ~ |
	cis h dis e ~ |
	e1 |
	r2. e4 |
	dis2. cis4 ~ |
	cis2 r4 dis4 |
	e1 ~ |
	e2 r4 fis4 |
	dis2 cis2 |
	r4
}

scoreC = \relative c' {
	h'4 ais h ~ |
	\mark \default
%	\once \override Score.RehearsalMark #'Y-offset = #-2.5
	h1 |
	r4 h4 ais h ~ |
	h1 |
	r4 h4 ais h ~ |
	h2 h4 ais ~ |
	ais2 gis8( fis) gis4( ~ |
	gis8 fis e4) r2 |
}

scoreD = \relative c'' {
	e8 ~ e fis ~ fis h, ~ |
	\mark \default
%	\once \override Score.RehearsalMark #'Y-offset = #-2.5
	h8 h4 h8 ~ h h4 cis8 ~ |
	cis2 r8 d8 ~ d h ~ |
	h8 h4 h8 ~ h e4 cis8( ~ |
	cis4. d8 ~ d) e4 h8 ~ |
	h8 h4 h8 ~ h a4 cis8 ~ |
	cis2 \times 2/3{cis4 cis d ~} |
	d4 d2 ~ d8 fis( ~ | 
	fis4. e8 d8) d4 h8 ~ |
	h8 h4 h8 ~ h h4 cis8 ~ |
	cis2 r8 d4 d8 ~ |
	d8 d4 d8 ~ d d4 e8 ~ |
	e2 r8 fis4 h,8 ~ |
	h8 h4 h8 ~ h h4 e8 ~ |
	e2 \times 2/3{cis4 cis d} |
	d1 |
	\bar "|."
}

chordsA = \chordmode {
	g1 | a | d/fis | d/fis |
	g | a | h:m | h:m |
	g | a | d/fis | d/fis |
	g | a | d | d |
}

chordsB = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	g1 |
%	\set chordChanges = ##t
	a | g | a | g |
	a | d | d |
}

chordsC = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	g1 |
%	\set chordChanges = ##t
	a | g | a |
	g/h | a/cis | d | d |
	g | a | g | a | g | a | d | d |
}

chordsD = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	g1/d |
%	\set chordChanges = ##t
	a/d | g/h | a/cis |
	g | a | d/fis | d | g |
	a | g/h | a/cis | g | a | d |
}

lyricsAOne = \lyricmode {
Oče ulazim u dvore tvoje
Stvoritelju svemira
Zadrhtim kad pred tebe stanem
Slava slava u svetištu tvome
Sva ta ljepota i sjaj pred tobom
I sve te štuje

Zemlja sva naviješta
Tvoja ljubav je posvuda
I sva priroda slavi te
Stabla se raduju
S njima slavim te i ja
Novu pjesmu pjevam 
Gospode tvoje sveto ime proslavljam

Isuse Gospode moga spasenja
Pred tebe dolazim sad 
I štujem tebe Spasitelju
Kriste ispuni me svojom silom
Ljubav da pronosim svud
Po svijetu da svi te vide

Zemlja sva naviješta
Tvoja ljubav je posvuda
I sva priroda slavi te
Stabla se raduju
S njima slavim te i ja
Novu pjesmu pjevam 
Gospode tvoje sveto ime proslavljam
}

lyricsB = \lyricmode {
}

lyricsATwo = \lyricmode {
}

lyricsC = \lyricmode {
}

lyricsD = \lyricmode {
}

\score {
<<
	\new ChordNames { \romanChords \transpose d c { \chordsA \chordsB \chordsC \chordsD } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC \chordsD }
	\new Staff { \scoreA \scoreB \scoreC \scoreD }
	\addlyrics { \lyricsAOne \lyricsB \lyricsC \lyricsD }
	\addlyrics { \lyricsATwo }
>>
}
