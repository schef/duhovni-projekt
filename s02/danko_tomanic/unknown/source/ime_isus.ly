\version "2.17.29"

\header {
	title = "IME ISUS"
		titlex = "THE NAME OF JESUS"
		composer = "DANKO TOMANIĆ"
		bpm = "128"
		style = "PINK ROCK"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key h \minor
		\mark \default
		\partial 4
		fis8 a |
		h8 a ~ a4 h8 a ~ a4 |
		h8 fis ~ fis2 h8 h |
		h8 a ~ a2 a8 g |
		g8 fis ~ fis2 fis8 a |
		a8 g ~ g2 g8 fis |
		fis8 e4. \( ~ e8 e8 \) e8 d |
		fis8 e ~ e4 e d8 fis ~ |
		fis8 e ~ e4 fis4 fis |
		d4 h2 r4 |
		r2

		\breathemoj
		d'4 d |
		d4 cis cis8 h4 a8 ~ |
		a2 r4 cis8 cis |
		cis4 h h8 a4 g8 ~ |
		g4 r4 h a |
		cis4 h2 r4 |
		r2

		\breathemoj
		fis4 d |
		e4( fis8) e ~ e4 r4 |
		r2 fis4 fis |
		d4 h2 r4 |
		r2 r4
		\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
	\set chordChanges = ##f
		s4 |
		h1*2:m ||
		fis:m ||
		e:m ||
		a2*3 a4 fis:7/ais ||
		h1*2:m ||
		a ||
		g ||
		h:m ||
		a ||
		\set chordChanges = ##t
		h1:m |
		h4*3:m        
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Tko to mo -- že ži -- vot da -- ti
		grije -- ha lan -- ce po -- ki -- da -- ti
		sve o -- kre -- nu -- ti u tre -- nu
		_ da do -- ži -- viš no -- vu mje -- nu
		I -- me I -- sus

		I -- me I -- sus to je to
		On će o -- da -- gna -- ti zlo
		I -- me I -- sus
		I -- me I -- sus
		I -- me I -- sus
}


lyricsATwo = \lyricmode {
	On me sna -- gom svo -- jom di -- že
		sva -- kog tre -- na sve smo bli -- že
		i ja nje -- mu i on me -- ni
		_ haj -- de i ti list o -- kre -- ni
		I -- me I -- sus

		I -- me I -- sus on je taj
		Ne -- ma stra -- ha ne -- ma kraj
		I -- me I -- sus
}

lyricsAThree = \lyricmode {
	Sna -- gom svo -- je rije -- či lije -- či
		Haj -- te \left "k nje" -- mu što vas prije -- či
		Za sve nas on mje -- sta i -- ma
		u svo -- jim mi -- lim sta -- no -- vi -- ma
		I -- me I -- sus

		I -- me I -- sus on je taj
		daj ga ba -- rem po -- gle -- daj
		I -- me I -- sus
}

\score {
	<<
		\new ChordNames { \romanChords \transpose d c \akordi }
	\new ChordNames { \jazzChords \akordi }
	\new Staff { \note }
	\addlyrics { \lyricsAOne }
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
		\midi { \tempo 4 = 128 }
}
