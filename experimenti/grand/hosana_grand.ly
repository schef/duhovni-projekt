\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
        title = "HOSANA"
        subtitle = "\"HOSANNA\""
        composer = "BROOKE FRASER"
        poet= "TEST | TEST"
        copyright = "\"Hosanna\" by Brooke Fraser, Copyright © 2006 Hillsong Publishing"
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key e \major
	\mark \default
	r8 e'8 e[ cis] e4 fis8 a ~ |
	a gis ~ gis2. |
	e8[ e] e[ cis] e4 fis8 gis ~ |
	gis2 \times 2/3 {a4 gis cis, ~} |
	cis4. cis8 \times 2/3 {a'4 gis dis ~} |
	dis1 |

	r8 e8 e[ cis] e4 fis8 a ~ |
	a gis ~ gis2. |
	e8[ e] e[ cis] e4 fis8 gis ~ |
	gis2 \times 2/3 {a4 gis cis, ~} |
	cis4. cis8 \times 2/3 {a'4 gis dis ~} |
	dis2.
}

scoreB = \relative c' {	
	\breathemoj
	h''8 h ~ |
	h4. cis8 ~ cis4 gis8 fis ~ |
	fis4. gis8 ~ gis4. h8 |
	h[ a] a[ gis] gis4 fis ~ |
	fis2. h8 h ~ |
	h4. cis8 ~ cis4 gis8 fis ~ |
	fis4. gis8 ~ gis4. gis8 |
	a8[ gis] fis[ e] fis4 e ~|
	e2..
	%\bar "|."
}

scoreC = \relative c' {
	\once \override BreathingSign #'text = \markup { \hspace #3  \raise #0.2 "," }
	\once \override Score.RehearsalMark #'X-offset = #3
	\breathemoj
	\once \override NoteColumn #'X-offset = #5
	h''8 |
	cis8[ h] h[ a] a gis4 fis8 ~ |
	fis1 |
	h8[ a] a[ gis] gis[ fis] e fis |
	a8 gis4  cis,8 ~ cis2 |
	cis'8[ h] h[ a] a8 gis4 fis8 ~ |
	fis4 fis8 e h'4 gis |
	gis1 |
	r1 |
	cis8[ h] h([ a]) a gis4 fis8 ~ |
	fis1 |
	h8[ a] a[ gis] gis[ fis] e fis |
	a8 gis4  cis,8 ~ cis2 |
	cis'8[ h] h[ a] a8 gis4 fis8 ~ |
	fis4. e8 gis4 fis( |
	e1) |
	r1 |
	\bar "|."
}

chordsA = \chordmode {
	e1*2 | cis1*2:m |
	fis1:m | h1 |
	h1 |
	e1*2 | cis1*2:m |
	fis1:m | h1 |
	h1 |
}

chordsB = \chordmode {
	e2/gis a2 | h2 cis:m | a cis:m | h1 |
	e2/cis a2 | h2 cis:m | a2 h2 | e1 |
}

chordsC = \chordmode {
	a1 | h | e | cis:m | a |
	h | cis:m | cis:m |
	a1 | h | e | cis:m | a |
	h | a | e | 
}

lyricsAOne = \lyricmode {
	\set stanza = #"1. "
	Ja vi -- dim kra -- lja sla -- ve
	Si -- la -- zi na o -- bla -- ku
	Ze -- mlja sva po -- dr -- hta -- va
	Ja vi -- dim lju -- bav, mi -- lost
	Pe -- re na -- še grije -- he sve
	Pje -- va -- mo, mi pje -- va -- mo
	}

lyricsB = \lyricmode {
	Ho -- sa -- na, ho -- sa -- na
	Ho -- sa -- na u vi -- si -- ni
	Ho -- sa -- na, ho -- sa -- na
	Ho -- sa -- na u vi -- si -- ni
}

lyricsC = \lyricmode {
	I -- zlije -- či me i o -- či -- sti
	O -- či mi za ne -- vi -- đe -- no o -- tvo -- ri
	Na -- u -- či me lju -- bi -- ti ka -- ko lju -- biš ti
	Daj da tvoj bu -- dem sav
	Sve što je -- sam ra -- di tvo -- ga Kra -- ljev -- stva
	Dok sa ze -- mlje u -- la -- zim u vje -- čnost
}

lyricsATwo = \lyricmode {
	\set stanza = #"2. "
	Ja vi -- dim po -- ko -- lje -- nje
	Mje -- sto tra -- ži, u -- sta -- je
	Po -- tpu -- no \skip 8 pre -- da -- no
	Ja vi -- dim o -- bra -- će -- nje
	Do -- la -- zi dok mo -- li -- mo
	Pa -- da -- mo na ko -- lje -- na
	}

\score {
<<
        \new ChordNames { \romanChords \transpose e c { \chordsA \chordsB \chordsC } }
        \new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
        \new Staff { \transpose c c, { \scoreA \scoreB \scoreC } }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
        \addlyrics { \lyricsATwo }
>>
}


%%ENGLESKI (STRANI) TEKST
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") A
%I see the king of glory 
%Coming on the clouds with fire
%The whole earth shakes
%The whole earth shakes
%
%I see his love and mercy 
%Washing over all our sin
%The people sing
%The people sing
%	}
%}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%I see a generation 
%Rising up to take their place
%With selfless faith
%With selfless faith
%
%I see a near revival 
%Stirring as we pray and seek
%We're on our knees
%We're on our knees
%	}
%}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") B
%Hosanna
%Hosanna
%Hosanna in the highest
%	}
%}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") C
%Heal my heart and make it clean 
%Open up my eyes to the things unseen
%Show me how to love like you have loved me
%
%Break my heart from what breaks yours
%Everything I am for your kingdoms cause
%As I go from nothing to 
%Eternity
%	}
%}
