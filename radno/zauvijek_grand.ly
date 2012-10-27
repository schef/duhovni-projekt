\version "2.14.2"

\header {
title = "ZAUVIJEK" 
subtitle = "\"FOREVER\""
composer = "CHRIS TOMLIN" 
poet = "TEST | TEST" 
copyright = "\"Forever\" by Chris Tomlin Copyright © 2000" 
}

\include "deutsch.ly"
\include "config_grand.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

%NOTE
scoreA = \relative c' {
	\key f \major
	\partial 4
	r8 c'8 |
	\mark \default
	\repeat volta 2 {
	c8 c4 c8 ~ c c4 c8 |
	d4 c8 c ~ c2 |
	a'4 a8 a b a g g ~ |
	g8 f ~ f2 r8 c8 |
	d8 f4 f8 ~ f4 d8 f8 |
	g4 a8 f ~ f2 |
	a4 a8 a b a g g ~ |
	g8 f ~ f2 f4 ~ |
	f4 g2. ~ |
	g2.  a4 ~ |
	a4 f2. ~ |
	}
	\alternative {
	%prima
		{ f2. ~ f8 c8 }
	%sekunda
		{f2. f4 ~ }
	}
	f4 g2. ~ |
	g2. a4 ~ |
	a4 f2. ~ |
	f2.
}

scoreB = \relative c' {
	\key f \major
	a''8 c ~ |
	\repeat volta 2 {
	\mark \default
	c8 a4 g8 ~ g g4 g8 ~ |
	g8 a4. ~ a4 a8 c ~ |
	c8 a4 g8 ~ g a4 f8 ~ |
	f2. a8 c8 ~ |
	c8 a4 g8 ~ g g4 g8 ~ |
	g8 a4. ~ a4 g8 g ~ |
	g8 f8 ~	f2 g8[ g] ~ |
	}
	\alternative {
	%prima
		{ g8 f ~ f2 a8 c }
	%sekunda
		{ g8 f8 ~ f2 g8 g ~}
	}
	g8 f ~ f2. |
	r1 |
	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
\skip 4
	f1 | f | f | f |
	b | b | b | f |
	c | c | b/d | b/d |
	b1/d | c | c | b/d |
}

chordsB = \chordmode {
	\skip 1
	f1 | f | d:m | d:m |
	c | c | b | b1 |
	b1 | b | b |
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Daj hva -- lu Bo -- gu i Kra -- lju svom
Vje -- čna je nje -- go -- va lju -- bav
On do -- bar je, on je u -- zvi -- šen
Vje -- čna je nje -- go -- va lju -- bav
Pje -- vaj hva -- lu
}

lyricsB = \lyricmode {
Bog za -- u -- vijek je vje -- ran
Bog za -- u -- vijek je jak
On za -- u -- vijek je s na -- ma
I u -- vijek i u -- vijek  
Za -- u -- vijek
}

lyricsATwo = \lyricmode {
Mo -- ćnu ru -- ku on pru -- ža nam
Vje -- čna je nje -- go -- va lju -- bav
No -- vi ži -- vot nam da -- ru -- je
Vje -- čna je nje -- go -- va lju -- bav
Pje -- vaj hva -- lu
Pje -- vaj hva -- lu
}

lyricsAThree = \lyricmode {
Od i -- zla -- ska sun -- ca do za -- la -- ska
Vje -- čna je nje -- go -- va lju -- bav
Mi -- lo -- šću Bo -- žjom će -- mo ži -- vje -- ti
Vje -- čna je nje -- go -- va lju -- bav
Pje -- vaj hva -- lu pje -- vaj hva -- lu
}

\score {
<<
        \new ChordNames { \romanChords \transpose f c { \chordsA \chordsB } }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsB }
	\addlyrics { \lyricsATwo }
	\addlyrics { \lyricsAThree }
>>
}

