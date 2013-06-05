\version "2.16.0"

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

\header {
	title = "SVOJE BRIGE SAD ODLOŽI"
	subtitle = "\"LEGE DEINE SORGEN NIEDER\""
	composer = "SEFORA NELSON"
	poet= "115 BPM | BALADA"
	copyright = "\"Lege Deine Sorgen Nieder\" by Sefora Nelson, Copyright ©"
  %album = Wenn der Tag Kommt
}

\include "config_grand.ly"

%	%\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
%	%\override Score.RehersalMark #'break-align-anchor-alignment = #RIGHT
%	%\once \override Score.RehearsalMark #'Y-offset = #-1.5
%	%\once \override Score.RehearsalMark #'X-offset = #0.02

%phraseBreak = { \bar "" \break }
phraseBreak = { }

originalScore = {
	\key h \major
	
	\mark \default %verse
	\phraseBreak %phrase01
	\phraseBreak %phrase02
	\phraseBreak %phrase03
	\phraseBreak %phrase04
	\phraseBreak %phrase05
	\phraseBreak %phrase06
	\phraseBreak %phrase07
	\phraseBreak %phrase08
	\phraseBreak %phrase09
	\phraseBreak %phrase10

%	\breathemoj %chorus

%	\breathemoj %bridge
}

%	%\once \override ChordNames.ChordName #'X-offset = #1

originalChords = \chordmode {
	c1
}


croatianLyricsA = \lyricmode {
	tekst %text01
	%text02
	%text03
	%text04
	%text05
	%text06
	%text07
	%text08
	%text09
	%text10
}

croatianLyricsB = \lyricmode {
	tekst %text01
	%text02
	%text03
	%text04
	%text05
	%text06
	%text07
	%text08
	%text09
	%text10
}

englishLyricsA = \lyricmode {
	tekst %text01
	%text02
	%text03
	%text04
	%text05
	%text06
	%text07
	%text08
	%text09
	%text10
}

englishLyricsB = \lyricmode {
	tekst %text01
	%text02
	%text03
	%text04
	%text05
	%text06
	%text07
	%text08
	%text09
	%text10
}

\score {
<<
	\new ChordNames { \romanChords \transpose h c \originalChords }
	\new ChordNames { \jazzChords \originalChords }
	\new Staff { \originalScore }
	\addlyrics { \englishLyricsA }
	\addlyrics { \croatianLyricsA }
%	\addlyrics { \emptyLyricsA }
	\addlyrics { \englishLyricsB }
	\addlyrics { \croatianLyricsB }
%	\addlyrics { \emptyLyricsB }
>>
}
