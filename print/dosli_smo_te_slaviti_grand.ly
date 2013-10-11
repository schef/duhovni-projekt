\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
        title = "DOŠLI SMO TE SLAVITI"
	subtitle = ""
	composer = "BRUNO I VESNA LICENDER"
        poet= "TEST | TEST"
        copyright = "Copyright Information"
}

\include "config_grand.ly"


scoreA = \relative c' {
	\key e \major
	\mark \default
	h'8 h h h16 cis ~ cis8 e e4 |
	e8 e e e16 fis ~ fis8 e e e |
	e2 r2 |
	r1 |
	h8 h h h16 cis ~ cis8 e e4 |
	e8 e e e16 fis ~ fis8 e e e |
	e2 r2 |
	r1 |
	fis8 fis fis fis16 fis ~ fis8 fis fis gis |
	fis8 e e cis16 e ~ e4 r4 |
	fis8 fis fis e fis4 gis8 a ~ |
	a2 r2 |
}

scoreB = \relative c' {
	\mark \default
	e'4 e e e |
	cis4 e e dis8 e ~ |
	e1 |
	r1 | \break
	gis4 gis fis e |
	cis4 e e dis8 e ~ |
	e1 |
	r1 |
	\bar "|."	
}

chordsA = \chordmode {
e1 | cis2:m h | e1 | e1 |
e1 | cis2:m h | e1 | e1 |
h1 | a | h | a |
}

chordsB = \chordmode {
e1 | cis2:m h | e1 | e |
e | cis2:m h | e1 | e |
}

lyricsAOne = \lyricmode {
Do -- šli smo te sla -- vi -- ti.
I -- me tvo -- je da -- nas uz -- di -- ći.
Pje -- sme će -- mo pje -- va -- ti.
Ra -- do -- sno pred to -- bom ple -- sa -- ti.

Po -- di -- gni -- mo ru -- ke sa -- da Go -- spo -- du u čast.
Za -- pje -- vaj -- mo svi u glas.
}

lyricsB = \lyricmode {
Čast i sla -- va te -- bi pri -- pa -- da.
Čast i sla -- va te -- bi pri -- pa -- da.
}

lyricsATwo = \lyricmode {
Vi -- so -- ko si iz -- nad sveg.
Kralj u Ne -- bu za -- \skip 8 u -- vijek. \skip 8
Te -- bi ću se kla -- nja -- ti
u du -- hu i i -- \skip 8 sti -- ni. \skip 8
}

\score {
<<
        \new ChordNames { \romanChords \transpose e c { \chordsA \chordsB } }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
>>
}

