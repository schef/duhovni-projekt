\version "2.17.29"

\header {
title = "KARTA ZA NEBO"
composer = "RUDI FAJGL"
bpm = "117"
style = "MESAP"
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
	\partial 8
	h,8 |
	gis'8 fis4 gis8 a gis gis fis |
	fis8 e8 \( ~ e4 e16 e \) e8 ~ e fis |
	e8. dis16 ~ dis4 r2 |
	r1 |
	r4 r8 cis8 cis8. \( dis16 ~ dis8 \) e |
	dis4. \( dis8 ~ dis2 \) |
	r4 r8 cis8 cis4 h8 h ~ |
	h2 r2 |
	r2 r4 r8 h8 |
	gis'8 fis4 gis8 a gis gis fis |
	fis8 e8 ~ e4 e16 e e8 ~ e fis |
	e8. dis16 ~ dis4 r2 |
	r1 |
	r2 e4 cis8 dis8 \( ~ |
	dis4 h8\) h ~ h gis'4 fis8 |
	fis8 ( e ~ e2. ) |
	r2 r4 r8

	\breathemoj
	h8 |
	gis'4 fis8 gis a gis ~ gis4 |
	r2 a16 gis fis8 ~ fis8 e |
	dis8. dis16 ~ dis4 r2 |
	r1 |
	r2 cis8. dis16 ~ dis8 e |
	dis4. dis8 ~ dis2 |
	r4 cis8 cis cis4 h8 h ~ |
	h2 r4 r8 h8 |
	gis'4 fis8 gis a gis ~ gis4 |
	r2 a16 gis fis8 ~ fis8 e |
	dis8. dis16 ~ dis4 r2 |
	r1 |
	r2 e4 cis8 dis ~ |
	dis4. h8 ~ h8 gis'4 fis8 |
	fis8\( e ~ e2.\) |
	r1 |
	\bar "|."




}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				s8 |
				e1 | e | h | h |
				a1 | h | a | e |
				e1 |
				e1 | e | h |
				h1 | a1 | h | e |
				
				e1 |
				e1 | e | h |
				h1 | a | h | a | e |
				e1 |
				e1 | h | h |
				a1 | h | e | e |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
Kad o -- kru -- tan ži -- vot ski -- ne o -- smijeh, __ _ _ sa mog li -- ca __
Kad ne vi -- dim i -- zlaz, iz svije -- ta zla __
Kad na mo -- jem li -- cu sva -- kog da -- na, __  zr -- ca -- li __ se tu -- ga __
On je tu __ da je u -- ti -- ša __

}

lyricsB = \lyricmode {
Jer kar -- tu za Ne -- bo, __ ne mo -- gu __ si ku -- pit' __
Ni -- ti __ za -- slu -- žit', __ do -- brim dje -- li -- ma __
Jer kar -- tu za ne -- bo, __ ne mo -- gu __ si ku -- pit __
To je dar __ mog I -- su -- sa __ _

}

lyricsATwo = \lyricmode {
Kad ne -- mam sa ki -- me u te da -- ne, __  da po -- dje -- lim tu -- gu __ 
"" On __ _ je tu __ _ da tje -- ši me __
Po u -- sko -- me pu -- tu pre -- ma Ne -- bu, __ si -- gur -- no __ me vo -- di __
I -- sus moj __ _ je spa -- si -- telj __
}

lyricsAThree = \lyricmode {
Na o -- vo -- me svije -- tu ka -- žu i -- ma, __ mno -- go do -- brih lju -- di
 __ 
"" A -- li što vrije -- di, __ do -- bro -- ta ta __
Kad ni -- ka -- da ni -- su u ži -- vo -- tu, __ pri -- hva -- ti -- li Kri -- sta __
U -- za -- lud __ _ im na -- da sva __

}

\score {
<<
        \new ChordNames { \romanChords \transpose e c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
        \addlyrics { \lyricsAThree }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 117 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
