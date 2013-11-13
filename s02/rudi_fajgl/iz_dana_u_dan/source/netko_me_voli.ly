\version "2.17.29"

\header {
title = "NETKO ME VOLI"
composer = "RUDI FAJGL"
bpm = "218"
style = "COUNTRY"
titlex = "IZ DANA U DAN"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key e \major
        \time 4/4
	\mark \default
	h4 h2 cis4 |
	gis4 ( fis ) e2 |
	fis4 e2 cis4 |
	e2 r2 |
	h'4 h2 cis4 |
	gis4 ( fis ) e2 |
	fis4 fis2 gis4 |
	fis2 r2 |
	h4 h2 cis4 |
	gis4 ( fis ) e2 |
	fis4 e2 cis4 |
	e2 r2 |
	e4 e fis fis |
	gis4 h a2 |
	gis4 gis2 fis4 |
	e2 r2 | \break

	\mark \default
	h'4 h8 h ~ h cis h4 |
	gis4 fis e2 |
	fis4 e g fis4 |
	e2 r2 |
	h'4 h8 h ~ h cis h4 |
	gis4 fis e2 |
	gis4 fis fis gis |
	fis2 r2 |
	h4 h8 h ~ h cis h4 |
	gis4 fis e2 |
	fis4 e g fis |
	e2 r2 |
	e4 e fis fis |
	gis4 h a2 |
	gis4 gis2 fis4 |
	e2 r2 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				e1 | e | a | e | e |
				e1 | fis | h | e | e | a | e |
				cis2:m h | e/gis a | h1 | e | e | e |
				a1 | e | e | e | fis | h |
				e1 | e | a | e | cis2:m h | e/gis a |
				h1 | e |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	A -- ko tu -- ga pre -- vla -- da -- va u ži -- vo -- tu tvom
	sr -- ce ta -- da ti o -- tvo -- ri, spa -- si -- te -- lju svom
	on ti u -- tje -- hu do -- no -- si, na -- du, lju -- bav, spas
	i -- sus naš o -- tku -- pi -- telj, ra -- di za nas 

}

lyricsB = \lyricmode {
	Ne -- tko me vo -- li, si -- gu -- ran sam, mo -- li -- tve mo -- je u -- sli -- ša -- va
	ja ne -- kog po -- znam, tko lju -- bi me, grije -- he mo -- je o -- pra -- šta i vo -- di me
%	ne -- tko me vo -- li, si -- gu -- ran sam, mo -- li -- tve mo -- je u -- sli -- ša -- va
%	ja ne -- kog po -- znam , tko lju -- bi me, grije -- he mo -- je o -- pra -- šta i vo -- di me

}

lyricsATwo = \lyricmode {
	\repeat unfold 38 _
	A -- ko mi -- sliš da ži -- vot tvoj, gu -- bi smi -- sa -- o
	pu -- ta pra -- vog ne na -- la -- ziš, sve je pro -- pa -- lo
	sve pro -- ble -- me i bri -- ge sve, nje -- mu pre -- daj ti
	i -- sus će te vo -- di -- ti i spa -- si -- ti

}

\score {
<<
        \new ChordNames { \romanChords \transpose e c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsB \lyricsAOne }
        \addlyrics { \lyricsATwo }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 218 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
