\version "2.17.29"

\header {
title = "OD KAKO ZNAM"
composer = "MARANATA"
bpm = "93"
style = "CRO SACRO FUNK"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key c \major
        \time 4/4
	\mark \default
	r8 g8 g e g4. a8 |
	e8\( d\) d4 r2 |
	r8 c'8 c8 a c4. d8 |
	h8 a16 g ~ g4 r2 |
	r8 g8 g e g4. a8 |
	e8\( d\) d4 r2 |
	r8 c'8  c a c\( c4\) d8 |
	h8\( a\) g4 r2 |

	\mark \default
	e'4. d8 f8 e d c |
	d8. a16 a4 r2 |
	d4. c8 e8 d c h |
	c8. g16 g4 r2 |
	e'4. d8 f8 e d c |
	d8. a16 a4 r2 |
	d4. c8 e8 d c h |
	c8. c16 c4 r2 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
	c1 | g | a:m |
	g1 | c | g | a:m | g |
	c1 | d:m | g:7 | c |
	c1 | d:m | g:7 | c |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Od ka -- ko znam za gol -- go -- tu
	moj ži -- vot se iz -- mje -- ni -- o __
	po -- hi -- tah bo -- žjem na -- ru -- čju
	pru -- ža -- no sva -- _ kom grije -- šni -- ku

}

lyricsB = \lyricmode {
	Sla -- va ve -- li -- čan -- stvo vlast i moć
	ka -- ko pri -- je sva -- kog vre -- me -- na
	ta -- ko sad i u sve vije -- ko -- ve
	je -- di -- no -- me bo -- gu go -- spo -- du

}

lyricsATwo = \lyricmode {
	Krist je -- dnom za grijeh u -- _ mrije
	pra -- ve -- dan za ne -- pra -- ve -- dne
	u -- bi -- jen bije -- še tije -- _ lom
	a -- li o -- ži -- _ vje du -- _ hom

}

lyricsAThree = \lyricmode {
	On koj' vas mo -- že spa -- si -- ti
	raz -- dra -- ga -- ne o -- ču -- va -- ti __
	bez -- prije -- kor -- ne o -- sta -- vi -- ti
	pred sla -- vu svo -- ju u vije -- čno -- sti

}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
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
\midi { \tempo 4 = 93 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
