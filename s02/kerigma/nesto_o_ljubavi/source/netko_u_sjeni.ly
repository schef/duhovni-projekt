\version "2.17.29"

\header {
title = "NETKO U SJENI"
composer = "VLADIMIR MIHOKOVIĆ MIHA"
bpm = "140"
style = "MORSKI"
titlex = "NEŠTO O LJUBAVI"
arranger = "KERIGMA"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)

kiticaPrva = {
	\mark \default
	\time 4/4
%	r4 \tuplet 4/3 { e4 e e e } |
%	r2 r8 e8 e4 |
%	e8 e e4 e8 e r4 |
%	r1 |
%	r4 \tuplet 3/2 { r4 e8 } e8 e e e ~ |
%	e2 r4 r8 e8 |
%	e8 e r4 e8 e r8 e |
%	e4 r4 r2 |
%	r1 |
%	r1 |
%	r1 |
	s1*2
	s1*2 \break
	s1*2
	s1*2 \break
	s1*3 \break
	}

note = \relative c' {
	\key c \major
	\mark \default
        r4 e4 e8 e e4 |
	e8 c r4 r2 |
	r4 g'8. g16 g4 a8 g |
	r8 a4 g8 a4 g |
	r4 e8 e \tuplet 3/2 { e4 f g } |
	f8 f ~ f4 r4 f8 e |
	d2 ( c4 h ) |
	c1 |
	r1 | \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
kiticaAkordi = \chordmode {
        \set chordChanges = ##t      
	a1:m |
	a:m |
	d |
	d |
	a1:m |
	a:m |
	d |
	d |
	a1:m |
	a:m |
	d |
}

akordi = \chordmode {
        \set chordChanges = ##t      
	d1 |
	f |
	g |
	c |
	a:m |
	f |
	g |
	c |
	c |
	}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	\set stanza = #"1. "
	_2 Gla8 -- dno8 dije8 -- te8 |
	_2 _8 pti8 -- cu4 |
	pro8 -- mr8 -- zlu4 gla8 -- di.8 _4 |
	_1 |
	_4 _8 _Ga8 -- leb u le -- tu |
	_8*7 kru8 -- |
	ži8 nad8 _4 ti8 -- hom lu -- _8 kom.4
}

lyricsATwo = \lyricmode {
	\set stanza = #"2. "
	_2 Ne8 -- mo4 -- ćna8 |
	že8 -- na _2 po8 -- kraj8 |
	_8 ne -- mo -- ćnog mu4 -- ža. |
	_1 |
	_2 U8 cr -- kvi ne -- |
	koj2 us8 -- krs -- nu -- će |
	_8 u -- skri -- sa -- va.2 |
}

lyricsAThree = \lyricmode {
	\set stanza = #"3. "
	_2 Voj8 -- nik na fron -- |
	_8 tu8 _2 ho8 -- ri -- |
	zon8 -- te gle -- da tu4 -- žno. |
	_1 |
	_2 Dje8 -- voj -- ci mla -- |
	dić4 _2 _8 cvijet8 |
	_4 _8 u8 ko -- su sta -- vlja.
}

%lyricsAOne = \lyricmode {
%	"Gladno dijete"1*2
%	"pticu promrzlu gladi."1*2
%	"Galeb u letu"1*2
%	"kruži nad tihom lukom."1*2
%}

lyricsB = \lyricmode {
	A ne -- tko u sje -- ni
	zvu -- ke iz sr -- ca pu -- šta ja -- ko
	i od ne -- kud se ču -- je a -- le -- lu -- ja.
	}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \kiticaAkordi }
        \new ChordNames { \jazzChords \kiticaAkordi }
	\new RhythmicStaff { \kiticaPrva }
        %\new Staff { \note }
	\new Lyrics { \lyricsAOne }
	\new Lyrics { \lyricsATwo }
	\new Lyrics { \lyricsAThree }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
	\addlyrics { \lyricsB }
>>
\layout {}
}

\score {
<<
        %\new ChordNames { \jazzChords \akordi }
	\new RhythmicStaff { \kiticaPrva }
        %\new Staff { \note }
>>
\midi { \tempo 4 = 140 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
