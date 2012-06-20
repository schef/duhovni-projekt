\version "2.14.2"

\header {
title = "DOBRO JE SLAVITI"
composer = "FRANK BOSCH"
poet = "UBRZAVAJUĆA | ŽIDOVSKA"
copyright = "Copyright Information"
subtitle = ""
}

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"
\include "config_grand.ly"

%NOTE
scoreA = {
	\key d \major
	\mark \default
	\repeat volta 2 {
	fis'4 h4 fis'4 h8 h8 |
	g'8 a'8 g'4 fis'4 a'4 |
	h'8 a'8 g'4 fis'8 e'8 d'4 | }
	\alternative {
	{ e'8 e'8 d'8 e'8 fis'4 r4 }
	{ e'8 e'8 d'8 e'8 fis'4 r8 }
	}
}

scoreB = {
	\breathemoj
	h8
	h8 cis'8 d'4 cis'4 e'4 |
	d'4 a'4 a'4 g'8 g'8 |
	fis'8\( e'8\) d'4 e'8\( a'4\) g'8 |
	fis'2 fis'4 r8 h8
	%doslvna kopija
	h8 cis'8 d'4 cis'4 e'4 |
	d'4 a'4 a'4 g'8 g'8 |
	fis'8\( e'8\) d'4 e'8\( a'4\) g'8 |
	fis'2 fis'4 r4
	\bar "||" %\break
}

scoreC = {
	\once \override Score.RehearsalMark #'Y-offset = #-1.7
	\once \override Score.RehearsalMark #'outside-staff-priority = #1 
	\mark \default
	\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
	\repeat volta 2 {
	g'2. a'8 g'8 |
	fis'4.\( e'8\) e'2 |
	fis'4 fis'4 fis'4 fis'4 |
	e'4 d'4 r2 |
	e'2. fis'8\( e'8\) |
	d'2 cis'2 | }
	\alternative {
	{d'2 d'4 d'4 | e'4.\( fis'8\) fis'2 |}
	{d'2 e'4 d'4 | cis'2 h2 | }
	}

	\bar "||" %\break
}

scoreD = {
	\once \override Score.RehearsalMark #'Y-offset = #-1.7
	\once \override Score.RehearsalMark #'outside-staff-priority = #1 
	\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
	\mark \default
	fis'4 h4 fis'4 h8 h8 |
	g'8 a'8 g'4 fis'4 a'4 |
	h'8 a'8 g'4 fis'8 e'8 d'4 |
	e'8 e'8 d'8 cis'8 h4 r4 |
	\bar "|."
}

%AKORDI
chordsA = \chordmode {
	h1:m a2 d2 e:m h:m e:m fis:7 e:m fis:7
}

chordsB = \chordmode {
	%\once \override ChordNames.ChordName #'X-offset = #2
	h2:m a2 d e:m g a fis1:7
	%doslovna kopija
	h2:m a2 d e:m g a fis1:7
}

chordsC = \chordmode {
	e1:m a d h:m e:m fis:7 h:m a2/cis d h1:m fis2:7 h:m
}

chordsD = \chordmode {
	\set chordChanges = ##f
	h1:m a2 d2 e:m h:m fis:7 h:m
	\set chordChanges = ##t
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Do -- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji;
tvo -- me, Sve -- vi -- šnji;
}

lyricsB = \lyricmode {
Na -- vije -- šta -- ti ju -- trom lju -- bav tvo -- ju
i no -- \skip 8 ću vjer -- \skip 4 nost tvo -- ju;
%doslovna kopija
Na -- vije -- šta -- ti ju -- trom lju -- bav tvo -- ju
i no -- \skip 8 ću vjer -- \skip 4 nost tvo -- ju
}

lyricsC = \lyricmode {
Ka -- ko su sil -- \skip 8 na dje -- la tvo -- ja, Bo -- že
I du -- \skip 8 bo -- ki na -- u -- mi tvo -- \skip 8 ji
na -- u -- mi tvo -- ji
}

lyricsD = \lyricmode {
Do -- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji!
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c { \chordsA \chordsB \chordsC \chordsD } }
        \new ChordNames { \jazzChords \chordsA \chordsB \chordsC \chordsD }
        \new Staff { \scoreA \scoreB \scoreC \scoreD}
        \addlyrics { \lyricsAOne \lyricsB \lyricsC \lyricsD }
>>
}
