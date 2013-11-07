\version "2.17.29"

\header {
title = "DU BIST MEIN GLÜCK"
composer = "KATHARINA NEUDECK"
bpm = "70"
style = "Ps.73,28"
titlex = "JAHRESLOSUNG"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key b \major
        \time 4/4
	\mark \default
	d16 f f f ~ f8 f16 f ~ f16 g8. r8 es16\( d\) |
	c8 d16 es ~ es8 d16 d ~ d2 |
	d16 f f f ~ f8 f16 f ~ f16 g8. r8 es16 d |
	c8 d16 es ~ es8 d16 d ~ d2 |
	d16 b' b b ~ b b8 b16 ~ b g8. r8 es16 d |
	c8 d16 es ~ es d( c) d ~ d2 |
	es16 b b b ~ b b8 d16 ~ d c( b8) r8 b16 b |
	\time 2/4
	es8 d16 es ~ es b8 f'16 ~ |
	\time 4/4
	f2 ~ f4 r16

	\breathemoj
	b,16 b' a |
	g8. f16 ~ f es8 f16 ~ f4 r8 c16 d |
	es8 d16 es ~ es d8 es16 ~ es8 d c b |
	b'8 a16 g ~ g f f8 ~ f4 r8 c16 d |
	es8. f16 ~ f8 f ~ f4 r8
	
	\breathemoj
	f16 es |
	es4. d8 ~ d4. b8 ~ |
	b1 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				b2 es | f b |
				b2/d es | f b | g:m es |
				f2 g4:m f |
				es2 b/d | c2:m | f1 | es2 b/d |
				c4*3 b4/d | es2 b2/d | c2:m f2 |
				es2 f | b1 |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Herr, ich kann dei -- ne Lie -- be, die sich mir ent -- ge -- gen -- streckt,

	   nur im -- mer mehr er -- fas -- sen, weil du mein Ver -- lan -- gen weckst!

		   Denn ich will bei dir blei -- ben, du nimmst mei -- ne rech -- te __ Hand. __

			  Dan -- ke für dei -- ne Hil -- fe, __ als du mir zur Sei -- te standst! __
}

lyricsATwo = \lyricmode {
	Kann ich die Ster -- ne zäh -- len, am __ _ gro -- ßen Him -- mels -- zelt __

	  und dei -- ne Macht be -- grei -- fen, du der Fin -- ster -- nis er -- hellt? __

		  Du zählst auch mei -- ne Trä -- nen, sam -- melst sie in dei -- ner __ Hand! __

			  Ich lo -- be dich und sin -- ge, __ weil mich dei -- ne Gna -- de fand! __
}

lyricsB = \lyricmode {
	Herr, du al -- lein bist mein Glück, __ denn du holst mich aus __ der Tie -- fe

	Und ich lauf` zu dir __ zu -- rück __ ich ver -- trau -- e __ dir! __
	Ich ver -- trau -- e __ dir! __
}

\score {
<<
        \new ChordNames { \romanChords \transpose b c \akordi }
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
\midi { \tempo 4 = 70 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
