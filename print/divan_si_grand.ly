\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
	title = "DIVAN SI"
	subtitle = "\"BEAUTIFUL ONE\""
	composer = "TIM HUGES"
	poet= "TEST | TEST"
	copyright = "Copyright Information"
}

\include "config_grand.ly"

scoreA = \relative c'' {
	\key d \major
	\mark \default
	h4. a8 a4. fis8 |
	fis4. e8 e4. d8 |
	fis4. e8 d4. fis8 ~ |
	fis8 fis4. r2 |
	h4. a8 a4. fis8 |
	fis4. e8 e4. d8 |
	fis4 r4 r2 |
	r2. r8 a8 |
	h4. a8 a4. fis8 |
	fis4. e8 e4. d8 |
	fis4. e8 d4. fis8 ~ |
	fis8 fis4. r4. h8 |
	h4. a8 a4. cis8 |
	cis4. cis8 cis4. d8 ~ |
	d8 d4. ~ d2 ~ |
	d2
}

scoreB = \relative c'' {
	%\once \override Score.RehearsalMark #'Y-offset = #-1.7
	\breathemoj
	\times 2/3{d4 cis a} |
	h2 a2 |
	cis4. a8 \times 2/3{d4 cis a} |
	h2 h4 e |
	cis2 \times 2/3{d4 cis a} |
	h2 a2 |
	cis2 cis4( d) ~ |
	d8 d4. ~ d2 ~ |
	d2 r8 
}

scoreC = \relative c' {
	%\once \override Score.RehearsalMark #'Y-offset = #-2.5
	\breathemoj
	d8 d h' ~ |
	h a a a ~ a fis fis fis ~ |
	fis e e e ~ e4 d8 h' ~ |
	h8 a a d ~ \times 2/3{d4 fis, a} |
	a2 r4 d,8 h' ~ |
	h8 a a a ~ a fis fis fis ~ |
	fis e4 fis8 ~ fis fis4 fis8 ~ |
	fis2 r4. e8 ~ |
	e8 fis4. r8 d8 d h' |
	h a a a ~ a fis fis fis ~ |
	fis e e e ~ e4 d8 h' ~ |
	h8 a a a ~ a fis4 a8 ~ |
	a8 a4. r8 d,8 d h' ~ |
	h8 a a a ~ a a a cis ~ |
	cis8 cis4 cis8 ~ cis4 d8 d ~ |
	d2. ~ d8 e ~ |
	e8 fis ~ fis 
}

scoreD = \relative c'' {
	\breathemoj
	e8 ~ e fis ~ fis h, ~ |
	h8 h4 h8 ~ h h4 cis8 ~ |
	cis2 r8 d8 ~ d h ~ |
	h8 h4 h8 ~ h e4 cis8( ~ |
	cis4. d8 ~ d) e4 h8 ~ |
	h8 h4 h8 ~ h a4 cis8 ~ |
	cis2 \times 2/3{cis4 cis d ~} |
	d4 d2 ~ d8 fis( ~ | 
	fis4. e8 d8) d4 h8 ~ |
	h8 h4 h8 ~ h h4 cis8 ~ |
	cis2 r8 d4 d8 ~ |
	d8 d4 d8 ~ d d4 e8 ~ |
	e2 r8 fis4 h,8 ~ |
	h8 h4 h8 ~ h h4 e8 ~ |
	e2 \times 2/3{cis4 cis d} |
	d1 |
	\bar "|."
}

chordsA = \chordmode {
	g1 | a | d/fis | d/fis |
	g | a | h:m | h:m |
	g | a | d/fis | d/fis |
	g | a | d | d |
}

chordsB = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	g1 |
%	\set chordChanges = ##t
	a | g | a | g |
	a | d | d |
}

chordsC = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	g1 |
%	\set chordChanges = ##t
	a | g | a |
	g/h | a/cis | d | d |
	g | a | g | a | g | a | d | d |
}

chordsD = \chordmode {
%	\set chordChanges = ##f
	\once \override ChordNames.ChordName #'X-offset = #1
	g1/d |
%	\set chordChanges = ##t
	a/d | g/h | a/cis |
	g | a | d/fis | d | g |
	a | g/h | a/cis | g | a | d |
}

lyricsAOne = \lyricmode {
Pre -- di -- vna je lju -- bav ta \skip8
Ne -- pro -- mje -- nji -- va
\left "S kri" -- ža mi -- lost me pre -- pla -- vlju -- je
\skip8 Ne -- vi -- đe -- na još do sad
\skip8 Lju -- di ne zna -- ju
\skip8 Ka -- ko di -- van pre -- di -- van si ti
}

lyricsB = \lyricmode {
Di -- van si vo -- lim te
\skip8 Di -- van o -- bo -- ža -- vam te
Di -- van si mo -- ja
\once \override LyricText #'X-offset = #3
"[duša pjeva ti]" \skip8 \skip8
}

lyricsATwo = \lyricmode {
Tvo -- ja sla -- va mo -- ćna je 
Ne -- bo is -- pu -- nja -- va
Dje -- la tvo -- ja na -- ma go -- vo -- re
Lje -- po -- tom svo -- jom sr -- ce mi
\skip8 Ti na -- dah -- nju -- ješ
\skip8 Ka -- ko si -- lan pre -- di -- van si ti
}

lyricsC = \lyricmode {
\skip8 \skip8 O -- či si mo -- je \skip8 o -- tvo -- ri -- o
\skip8 Lju -- ba -- vlju o -- svo -- ji -- o
Jer ni -- šta na svije -- tu \skip8 ni -- je ka -- o ti
}

lyricsD = \lyricmode {
}

\score {
<<
	\new ChordNames { \romanChords \transpose d c { \chordsA \chordsB \chordsC \chordsD } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC \chordsD }
	\new Staff { \scoreA \scoreB \scoreC \scoreD }
	\addlyrics { \lyricsAOne \lyricsB \lyricsC \lyricsD }
	\addlyrics { \lyricsATwo }
>>
}
