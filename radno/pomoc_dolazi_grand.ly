\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
	title = "POMOĆ DOLAZI"
	subtitle = "\"HELP IS ON THE WAY\""
	composer = "AUTOR NEPOZNAT"
	poet= "TEST | TEST"
	copyright = "Copyright Information"
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key a \major
	\mark \default
	r4 e8 a16 h ~ h4 r4 | %1
	r8. a16 cis8 a16 h ~ h4 r4 |  
	r4 e,8 a16 h ~ h8. e,16 a16 a8. |
	a8. a16 ~ a a a8 r2 | %4
	r8. d,16 e8 a16 h ~ h4 r4 |
	r8 d16 d ~ d d8 e16 ~ e cis8. ~ cis4 |
	r8. cis16 fis8 cis16 e ~ e cis8 h16 ~ h8. a16 |
	a8 a16 a ~ a8 a16 a ~ a4 r4 | %8
}

scoreB = \relative c' {
%	\once \override Score.RehearsalMark #'Y-offset = #-2.3
	\mark \default
	r4 fis'8 e ~ e cis ~ cis a ~ |
	a4 r2. |
	r4 fis'8 e ~ e cis ~ cis h ~ |
	h4 r2. |
	\bar "||"
}

scoreC = \relative c'' {
	\once \override Score.RehearsalMark #'Y-offset = #-2.3
	\mark \default
	r4 d8 cis ~ cis4 r4 |
	cis8 cis16 cis ~ cis h h8 ~ h4 r4 |
	cis8 cis16 cis ~ cis h h8 ~ h4 r8. h16 |
	cis8 cis16 h ~ h8 a16 d ~ d8 cis16 h ~ h8 cis16 h ~ |
	h4 d8 cis ~ cis4 r4 |
	cis8 cis16 cis ~ cis8 h16 h ~ h8 a16 e' ~ e cis8 h16 ~ |
	h16 a8 fis16 ~ fis a8 a16 ~ a8 a16 h ~ h a a8 ~ |
	a4 r2. |
	\bar "|."
}

chordsA = \chordmode {
	a2 e2 | fis:m/a e/a | fis:m e | d a |
	a e/gis | fis:m e | fis:m e | d a |
}

chordsB = \chordmode {
%	\set chordChanges = ##f
%	\once \override ChordNames.ChordName #'X-offset = #1
	h:m fis:m |
%	\set chordChanges = ##t
	d1 | h2:m fis:m | e1 |
}

chordsC = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	d2 cis:m/e |
%	\set chordChanges = ##t
	fis:m h | h:m e | a e4 a4 |
	d2 cis:m/e | fis4:m f:7 e:7 es:7 |
	d a/cis h:m e | a1 |
}

lyricsAOne = \lyricmode {
Ka -- žu da je vrije -- me lijek
A -- li znaš da o -- ni ni -- su svje -- sni tog
Da te -- ško je, al’ do -- bar je Bog
On te -- be ni -- kad ne bi i -- zne -- vje -- ri -- o
}

lyricsB = \lyricmode {
On ču -- je plač
On sla -- ma strah
}

lyricsATwo = \lyricmode {
Sr -- ce ti zna i di -- že te
On u -- vijek bli -- zu je i ču -- je sva -- ku tvo -- ju riječ
Kad si slab, on mno -- go ja -- či je
Gdje god da je -- si, on te u -- vijek pro -- na -- đe
}

lyricsC = \lyricmode {
Sta -- ni, po -- moć do -- la -- zi
Po -- moć do -- la -- zi
Od te -- be ni -- kad ne -- će di -- ći ru -- ke
Hra -- bro, po -- moć do -- la -- zi
On riječ je dao
Pu -- sti da te vo -- di on
}

\score {
<<
	\new ChordNames { \romanChords \transpose a c { \chordsA \chordsB \chordsC } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
	\new Staff { \scoreA \scoreB \scoreC }
	\addlyrics { \lyricsAOne \lyricsB \lyricsC }
	\addlyrics { \lyricsATwo }
>>
}
