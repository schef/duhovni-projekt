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

originalScore = \relative c' {
	\key d \major

	%kitica1
	\mark \default %verse
	\repeat unfold 3 {\skip4}
	\skip8
	d16 e | fis8 d16 e ~ e8 cis16 d ~ d8 h16 ( a ~ a8 ) \phraseBreak %phrase01
	d16 e | fis8 d16 e ~ e8 cis16 h ~ h4 r8 \phraseBreak %phrase02
	d16 e | fis8 d16 e ~ e8 cis16 d ~ d fis8 e16 ~ e8. \phraseBreak %phrase03
	h16 | h8 d16 d ( e8 ) cis16 d ~ d8 r8 \phraseBreak %phrase04
	
	%refren
	\breathemoj
	d16 e fis a ~ | a8. fis16 ~ fis4 r8 r16 a,16 e'8 cis16 d ~ | d2 r4 \phraseBreak %phrase05
	d16 e fis a ~ | a8 fis16 e ~ e d d8 ~ d fis16 e ~ e8 d16 d ~ | d2 r4 \phraseBreak %phrase06
	d16 e fis a ~ | a8. fis16 ~ fis4 r8 r16 a,16 e'8 cis16 d ~ | d2 r4 \phraseBreak %phrase07
	d16 e fis a ~ | a8 fis16 e ~ e8 d16 d ~ d8 fis16 e ~ e8 d16 d ~ | d2. r8 \phraseBreak %phrase08
	\bar "|."
}

%	%\once \override ChordNames.ChordName #'X-offset = #1

originalChords = \chordmode {
	\repeat unfold 4 {\skip4}
	d4 a/cis g2/h |
	d4 a/cis g2/h |
	d4 a/cis g/h a |
	g4 a d2 |
	g2 a2 |
	h2.:m a4 |
	g2 a |
	d1 |
	g2 a2 |
	h2.:m a4 |
	g2 a2 |
	d8*7
}


croatianLyricsA = \lyricmode {

%verse 1
\set stanza = #"1."
Svo -- je bri -- ge sad o -- dlo -- ži, __
na moj dlan ih sta -- vi sve.
Tvo -- je o -- bja -- šnje -- nje ne tre -- bam
jer već te po -- zna -- jem.

%refrain

Haj -- de o -- dlo -- ži sve na moj dlan.
Do -- đi o -- dlo -- ži, sve pre -- pu -- sti na moj dlan.
Haj -- de o -- dlo -- ži, pre -- pu -- sti sve,
jer tvo -- me Bo -- gu ni -- šta ni -- je pre -- vi -- še. __

}

croatianLyricsB = \lyricmode {

%verse 2

\set stanza = #"2."
Svo -- je stra -- ho -- ve o -- dlo -- ži, __
sve što no -- ću mu -- či te.
Sa -- da mir ti da -- jem po -- nov -- no,
svoj mir ti da -- ru -- jem.
}

croatianLyricsC = \lyricmode {

%verse 3

\set stanza = #"3."
Svo -- je grije -- he sad o -- dlo -- ži, __
od -- mah pre -- daj i svoj sram.
Vi -- še ne mo -- raš ih no -- si -- ti,
jer za njih pla -- ćam sam.
}

croatianLyricsD = \lyricmode {

%verse 4

\set stanza = #"4."
Svo -- je su -- mnje sad o -- dlo -- ži, __
ni -- su ve -- će od me -- ne.
Sad ti da -- jem na -- du po -- no -- vno
i su -- mnja ne -- sta -- je.
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
	\new ChordNames { \romanChords \transpose d c \originalChords }
	\new ChordNames { \jazzChords \originalChords }
	\new Staff { \originalScore }
%	\addlyrics { \englishLyricsA }
	\addlyrics { \croatianLyricsA }
%	\addlyrics { \emptyLyricsA }
%	\addlyrics { \englishLyricsB }
	\addlyrics { \croatianLyricsB }
	\addlyrics { \croatianLyricsC }
	\addlyrics { \croatianLyricsD }
%	\addlyrics { \emptyLyricsB }
>>
}
