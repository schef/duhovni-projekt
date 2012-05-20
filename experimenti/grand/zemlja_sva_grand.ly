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
	r2. gis4 |
	fis2. ais,4 ~ |
	ais4 h2 fis'4 ~ |
	fis2 r2 |
	e2 dis4 dis( |
	cis1 ~ |
	cis1) |
	r1 |

}

scoreD = \relative c' {
	\mark \default
	r4 h'4 ais h ~ |
	h1 |
	r4 h4 ais h ~ |
	h1 |
	r4 h4 ais h ~ |
	h2 h4 ais ~ |
	ais2 gis8( fis) gis4( ~ |
	gis8 fis e4) r2 |
	r2. gis4 |
	fis2. ais4 ~ |
	ais4 h2 gis4 ~ |
	gis2 r2 |
	gis4. ais4. h4 |
	gis4 gis ais h |
	ais4 ais h cis |
	h1 ~ |
	h1 |
	r1 |
	r1 |
	r1 |
	\bar "|."
}

chordsA = \chordmode {
	h1 | h | h | h |
	fis/ais | fis/ais | fis/ais |
	gis:7/c | cis:m | cis:m | cis:m | cis:m |
	fis | fis | fis | fis |
}

chordsB = \chordmode {
%	\set chordChanges = ##f
%	\once \override ChordNames.ChordName #'X-offset = #1
	h1 | h | h | h |
	fis/ais | fis/ais | fis/ais |
	gis:7/c | cis:m | cis:m | cis:m | cis:m |
	fis | fis | fis |
%	\set chordChanges = ##t
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

lyricsA = \lyricmode {
Oče u -- la -- zim u dvo -- re tvo -- je
Stvo -- ri -- te -- lju sve -- mi -- ra
Za -- drh -- tim kad pred te -- be sta -- nem
Sla -- va sla -- va u sve -- ti -- štu tvo -- me
Sva ta lje -- po -- ta i sjaj pred to -- bom
I sve te štu -- je
}

lyricsB = \lyricmode {
Ze -- mlja sva na -- vije -- šta
Tvo -- ja lju -- bav je po -- svu -- da
I sva pri -- ro -- da sla -- vi te
Sta -- bla se ra -- du -- ju
S nji -- ma sla -- vim te i ja
No -- vu pje -- smu pje -- vam 
Go -- spo -- de tvo -- je sve -- to i -- me pro -- sla -- vljam
}

lyricsC = \lyricmode {
I -- su -- se Go -- spo -- de mo -- ga spa -- se -- nja
Pred te -- be do -- la -- zim sad 
I štu -- jem te -- be Spa -- si -- te -- lju
Kri -- ste i -- spu -- ni me svo -- jom si -- lom
Lju -- bav da pro -- no -- sim svud
Po svije -- tu da svi te vi -- de
}

lyricsD = \lyricmode {
Ze -- mlja sva na -- vije -- šta
Tvo -- ja lju -- bav je po -- svu -- da
I sva pri -- ro -- da sla -- vi te
Sta -- bla se ra -- du -- ju
S nji -- ma sla -- vim te i ja
No -- vu pje -- smu pje -- vam 
Go -- spo -- de tvo -- je sve -- to ime pro -- sla -- vljam
}

\score {
<<
	\new ChordNames { \romanChords \transpose h c { \chordsA \chordsB \chordsC \chordsD } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC \chordsD }
	\new Staff { \scoreA \scoreB \scoreC \scoreD }
	\addlyrics { \lyricsA \lyricsB \lyricsC \lyricsD }
>>
}
