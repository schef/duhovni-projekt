\version "2.14.1"

#(set-default-paper-size "a4")
%#(set-global-staff-size 10)

\paper{
between-system-spacing = 200\mm
between-system-padding = 200\mm
%ragged-last-bottom=##f
%annotate-spacing = ##t
}
\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title = "SPASENJA MOĆ"
% subtitle = "()"
  composer = "unknown"
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key e \major
%	\partial 4
\mark \markup { \box \bold A }
%\repeat volta 2 { 
	r2 e'16 e e8 fis8 e16 e ~ |
	e8 h8 ~ h4 e16 e e8 fis8 e16 e ~ |
	e8 cis ~ cis2 r8 e8 |
	e4 dis4 \times 2/3 {dis cis cis ~} |
	cis4 r4 e16 e e8 fis8 e16 e ~ |
	e8 h ~ h8. e16 e8 e fis e16 e ~ |
	e8 cis8 ~ cis2. |
	e4 dis \times 2/3 {dis e e ~} |
	e1 |
	r1 |
	
%}
%	\alternative {
%		{r1}
%		{r2 \set Timing.measurePosition = #(ly:make-moment -2 4)}
%	}
	\bar "||"
}

scoreB = \relative c' {
	\key e \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #9
	e'4 e e8[ e] e fis |
	fis4 fis4. fis8 fis[ e] |
	gis[ a] gis[ e ~] e4 e8 fis |
	gis[ a]	gis[ fis ~] fis4. e8 |
	e4 e e8[ e] e fis |
	fis4 fis4. fis8 fis[ e] |
	gis[ a] gis[ e ~] e e e[ fis] |
	gis[ a]	gis[ fis ~] fis2 |

	\bar "|."
}

scoreC = \relative c' {
	\key e \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #19
	r8 a''16 gis a8 gis r8 gis16 fis gis8 fis ~ |
	fis8 fis4. ~ fis4 fis16 gis8. |
	r8 a16 gis a8 gis r8 gis16 fis gis8 h ~ |
	h8 fis4. ~ fis2 |
	\bar ":|"
}

chordsA = \chordmode {
\jazzyChords
	a1 | e | cis:m | h |
	a | e | cis:m | h | a2 h2 | a2 h2 |
}

chordsB = \chordmode {
\jazzyChords
	e1 | h | cis2:m a2 | fis2:m h2 |
	e1 | h | cis2:m a2 | fis:m h |
}

chordsC = \chordmode {
\jazzyChords
	a2 e | h1 | a2 e | h1 |
}

lyricsAOne = \lyricmode {
Sa -- mi -- lost svi -- ma tre -- ba
Lju -- bav bez za -- ta -- je -- nja
Nek mi -- lost spu -- sti se

O -- prost nam svi -- ma tre -- ba
Do -- bro -- ta Spa -- si -- te -- lja
Na -- de na -- ro -- da
}

lyricsB = \lyricmode {
I -- sus
Pre -- mje -- šta pla -- ni -- ne
Bog i -- ma spa -- se -- nja moć
I -- ma spa -- se -- nja moć
Za -- u -- vijek
Tvo -- rac o -- tku -- plje -- nja
I -- sus je u -- skr -- snu -- o
On je po -- bije -- di -- o grob
}

lyricsC = \lyricmode {
Ti nam svije -- tli ne -- ka vi -- di svijet
Pje -- vaj, sve zbog sla -- ve Kra -- lja U -- skr -- slog

}

lyricsATwo = \lyricmode {
Pri -- mi me ka -- kav je -- sam
Pro -- \skip 8 ma -- ša -- je mo -- je
\skip 8 I sve stra -- ho -- ve

Ži -- \skip 8 vot svoj ću da -- ti
\skip 8 Da te u -- vijek slije -- dim
Sad se pre -- da -- jem
}
\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \chordsA }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						%\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsA }
	\new Voice { \scoreA }
	\addlyrics { \lyricsAOne }
	\addlyrics { \lyricsATwo } 
	>>
	%\midi {}
}
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \chordsB }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						%\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsB }
	\new Voice { \scoreB }
	\addlyrics { \lyricsB }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\markup { \fontsize #0 " " }
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \chordsC }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"FreeSerif"
						\set chordChanges = ##t
						\chordsC }
	\new Voice { \scoreC }
	\addlyrics { \lyricsC }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
