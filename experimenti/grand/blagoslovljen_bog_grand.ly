\version "2.14.2"

\include "deutsch.ly"
\include "../jazzChords_grand.ly"
\include "../romanChords_grand.ly"

\header {
	title = "BLAGOSLOVLJEN BOG"
	subtitle = "\"BLESSED BE YOUR NAME\""
	composer = "MATT I BETH REDMAN"
	poet= "256 BPM | ROCK"
	copyright = "\"Blessed Be Your Name\" by Matt and Beth Redman, Copyright ©"
}

\include "../config_grand.ly"

scoreA = \relative c {
	\key d \major
	\mark \default
	r4 r8 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a2 |
	fis8 e e d d2 |
	r1 |
	r4 r8 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a2 |
	fis8 e e d d2 |
	r1 |
	r4 d'8 d d4 a4 |
	a h cis d |
	r4 e4 e d |
	h1 |
	r4 d8 d d4 a4 |
	a h cis d |
	r4 e4 e d |
	\break
	h2 \breathe
}

scoreB = \relative c {
	fis'8 e e d |
	\mark \default
	d4. d8 ~ d e4 e8 ~ |
	e2 fis8 e e d |
	d1 ~ |
	d2 fis8 e e d |
	d4. d8 ~ d e4 e8 ~ |
	e2 fis8 e e d |
	fis4( g8) fis ~ fis e4 d8 ~ |
	d1 |
	\bar "||" \break
}

scoreC = \relative c {
	\mark \default
	fis'4 fis fis4. e8 |
	e2 r2 |
	fis4 fis fis4. e8 |
	e8( d4.) r4 r8 d8 |
	fis4 fis fis4. e8 |
	e2 r4 r8 d8 |
	fis4 g fis4. e8 |
	e8( d4.) r2 |
	\bar "|." \break
}

chordsA = \chordmode {
	h1 | fis | gis:m | e |
	h1 | fis | e | e |
	h1 | fis | gis:m | e |
	h1 | fis | e | e |
	h1 | fis | gis:m | e |
	h1/dis | fis | gis:m | e |
}

chordsB = \chordmode {
	h1 | fis | gis:m | e |
	h1 | fis | gis2:m fis2 | e1|
}

chordsC = \chordmode {
	h1 | fis | gis:m | e |
	h1 | fis | gis:m | e |
}

lyricsAOne = \lyricmode {
Bla -- go -- slov -- ljen Bog u ze -- mlji pu -- noj o -- bi -- lja
Kad iz -- lije -- va svoj bla -- go -- slov, bla -- go -- slov -- ljen Bog
Bla -- go -- slov -- ljen Bog kad na -- đem se u pu -- sti -- nji
\skip8 I di -- vlji -- nom ho -- dam sam, bla -- go -- slov -- ljen Bog

Za sve bla -- go -- slo -- ve tvo -- je pro -- slav -- ljam te
Ka -- da ta -- ma sve za -- mra -- či, tad mo -- gu reć
}

lyricsB = \lyricmode {
Bla -- go -- slov -- ljen Bog, Go -- spod moj
Bla -- go -- slov -- ljen Bog
Bla -- go -- slov -- ljen Bog, Go -- spod moj
Bla -- go -- slov -- ljen Bog, Go -- spod moj
}

lyricsC = \lyricmode {
Ti nam da -- ješ sve
Ti nam u -- zi -- maš
Svim sr -- cem pje -- vam ti
Da, bla -- go -- slov -- ljen Bog
}

lyricsATwo = \lyricmode {
Bla -- go -- slov -- ljen Bog \skip8 ka -- da sun -- ce gri -- je me
\skip8 I sve ka -- ko tre -- ba je, bla -- go -- slov -- ljen Bog
Bla -- go -- slov -- ljen Bog na pu -- tu pu -- nom ne -- vo -- lja
Kad bol pri -- ti -- sne o -- da -- svud, bla -- go -- slov -- ljen Bog
}

\score {
<<
	\new ChordNames { \romanChords \transpose h c { \chordsA \chordsB \chordsC } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
	\new Staff { \transpose d h { \scoreA \scoreB \scoreC } }
	\addlyrics { \lyricsAOne \lyricsB \lyricsC }
	\addlyrics { \lyricsATwo }
>>
}

%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") A
%Blessed Be Your Name
%In the land that is plentiful
%Where Your streams of abundance flow
%Blessed be Your name
%
%Blessed Be Your name
%When I'm found in the desert place
%Though I walk through the wilderness
%Blessed Be Your name
%Every blessing You pour out
%I'll turn back to praise
%When the darkness closes in, Lord
%Still I will say
%}}
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%Blessed be Your name
%When the sun's shining down on me
%When the world's 'all as it should be'
%Blessed be Your name
%
%Blessed be Your name
%On the road marked with suffering
%Though there's pain in the offering
%Blessed be Your name
%
%Every blessing You pour out
%I'll turn back to praise
%When the darkness closes in, Lord
%Still I will say
%}}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") B
%Blessed be the name of the Lord
%Blessed be Your name
%Blessed be the name of the Lord
%Blessed be Your glorious name
%}}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") C
%You give and take away
%You give and take away
%My heart will choose to say
%Lord, blessed be Your name
%	}
%}
%
%
%     \layout {
%       \context {
%         \Score
%         \remove "Bar_number_engraver"
%       }
%     }
