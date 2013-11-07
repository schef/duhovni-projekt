\version "2.17.29"

\header {
title = "KRV KOJU ISUS PROLI"
composer = "MARANATA"
bpm = "104"
style = "UNKNOWN"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key a \major
        \time 3/4
	\mark \default
	\partial 4
	e4 |
	a4\( ~ a8 e\) e4 |
	e4 dis e |
	fis4 fis fis |
	e2. |
	r2. |
	gis4 a h |
	a2 a4 |
	g2 g4 |
	fis4. eis8 fis8 gis |
	a2 h4 |
	cis2 cis4 |
	d8( cis ~ cis4) cis8 cis |
	d4 cis h |
	a2 gis4 |
	a2. |
	r2

	\breathemoj
	e4 |
	h'4 h h8. h16 |
	h4 a h |
	cis8. h16 a2 ~ |
	a2 e4 |
	h'4 h ~ h8. h16 |
	h4 a h |
	cis8. h16 a2 ~ |
	a2 a4 |
	a4. fis8 fis8 gis |
	a2 h4 |
	cis2 cis4 |
	d8( cis ~ cis4) cis8 cis |
	d4 cis h |
	a2 gis4 |
	a2. ~ |
	a2
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				s4 |
				a2 a4:maj7 | a2.:7 | d | a | cis |
				cis2. | fis:m | a:7 |
				d2. | d | a | fis | 
				h4:m a/cis d | a2/e e4 |
				a2. a | e | e4 a/e e | a2 d4/a | a2. |
				e2. | e4 a/e e | a2. | a:7 | d | d |
				a2. | fis | h4:m a/cis d |
				a2/e e4 | a2. | a2
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Krv ko __ _ -- ju I -- sus za me -- ne pro -- li
	ta -- da na gol -- go -- ti
	krv či -- sti me i ja -- ča dan za dan __
	ni -- kad ne gu -- bi svo -- ju moć
}

lyricsB = \lyricmode {
	i do -- si -- že do vr -- ho -- va pla -- ni -- na __
	i sli -- va __ se do -- lje u je -- ze -- ra __
	krv či -- sti me i ja -- ča dan za dan __
	ni -- kad ne gu -- bi svo -- ju moć __
}

lyricsC = \lyricmode {
	O -- du -- zi -- ma su -- mnju i smi -- ru -- je strah
	o -- ti -- re su -- ze sve
}

\score {
<<
        \new ChordNames { \romanChords \transpose a c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
				\addlyrics { \lyricsC }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 104 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
