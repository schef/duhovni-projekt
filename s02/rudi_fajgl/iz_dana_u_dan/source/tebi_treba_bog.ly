\version "2.17.29"

\header {
title = "TEBI TREBA BOG"
composer = "RUDI FAJGL"
bpm = "109"
style = "UNKNOWN"
titlex = "IZ DANA U DAN"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key e \major
        \time 4/4
	\mark \default
	\partial 8
	e8 |
	cis'8 h h gis gis fis fis e |
	fis8 e4 e8 ~ e4. gis8 |
	fis8 e4 e8 ~ e4 e8 e |
	fis8 gis4 gis8 ~ gis4. e8 |
	cis'8 h h gis gis fis fis e |
	fis8 e4 e8 ~ e4. gis8 |
	fis8 e4 e8 ~ e4 gis8 gis |
	gis8 fis4 fis8 ~ fis4

	\breathemoj
	gis8 fis |
	fis8 e ~ e4 r4 gis8 e |
	fis8 e4 e8 ~ e cis'4 h8 |
	\times 2/3 { gis8 ( fis ) e ~ } e4 r4 gis8 e |
	fis8 e4 e8 ~ e4. e8 |
	cis'8 h h gis gis fis fis e |
	fis4 e8 e ~ e2 |
	r4 gis8 e fis8 fis4 e8 ~ |
	e1 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				s8 |
				e1 | cis:m | a | e |
				e1 | cis:m | a | h | e/gis |
				a1 | e/gis | a | e | cis:m |
				a1 | e |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
_ Ka -- da tu -- žan no -- vi dan za -- po -- či -- nješ, __ dal' shva -- ćaš ti, __ te -- bi tre -- ba Bog __
"" ka -- da tu -- ga tvo -- je sr -- ce za -- ro -- bi, __ dal' shva -- ćaš ti, __ te -- bi tre -- ba Bog __

}

lyricsATwo = \lyricmode {
Kad mi -- sliš da te ni -- tko ne ra -- zu -- mi -- je, __ dal' shva -- ćaš ti, __ te -- bi tre -- ba Bog __
kad po -- mi -- sliš da od svih si za -- bo -- ra -- vljen, dal' shva -- ćaš ti, __  
te -- bi tre -- ba Bog __
}

lyricsB = \lyricmode {
Sva -- ko ju -- tro, __ te -- bi tre -- ba Bog, cije -- log da -- na, __ te -- bi tre -- ba Bog __
i na -- ve -- čer kad spre -- maš se na spa -- va -- nje, __ te -- bi tre -- ba Bog __

}

\score {
<<
        \new ChordNames { \romanChords \transpose e c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 110 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
