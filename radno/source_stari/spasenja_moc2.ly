\version "2.14.2"

#(set-default-paper-size "biblija")
#(set-global-staff-size 16)

\paper {
indent = 0
top-markup-spacing #'padding = #2
markup-system-spacing #'padding = #5
markup-system-spacing #'stretchability = #5
score-system-spacing #'padding = #5
last-bottom-spacing #'padding = #5
score-markup-spacing #'padding = #5
top-system-spacing #'padding = #17.5

markup-markup-spacing #'padding = #3

system-system-spacing #'padding = #1
%system-system-spacing #'minimum-distance = #1
system-system-spacing #'stretchability = #0
score-system-spacing #'stretchability = #5
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

%oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Mighty To Save\" by Reuben Morgan and Ben Fielding, Copyright © 2009 Hillsong Publishing" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
print-page-number = ##f
%first-page-number = #16
%print-first-page-number = ##t
%auto-first-page-number = ##t
%ragged-last-bottom=##t
%annotate-spacing = ##t
}

\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "SPASENJA MOĆ" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "R. MORGAN I B. FIELDING" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key e \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\repeat volta 2 {
	%}
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
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "||" \break
}

scoreB = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #9
	%\partial 4
	e'4 e e8[ e] e fis |
	fis4 fis4. fis8 fis[ e] |
	gis[ a] gis[ e ~] e4 e8 fis |
	gis[ a]	gis[ fis ~] fis4. e8 |
	e4 e e8[ e] e fis |
	fis4 fis4. fis8 fis[ e] |
	gis[ a] gis[ e ~] e e e[ fis] |
	gis[ a]	gis[ fis ~] fis2 |
	\bar "|." \break
}

scoreC = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #19
	%\partial 2
	r8 a''16 gis a8 gis r8 gis16 fis gis8 fis ~ |
	fis8 fis4. ~ fis4 fis16 gis8. |
	r8 a16 gis a8 gis r8 gis16 fis gis8 h ~ |
	h8 fis4. ~ fis2 |
	\bar ":|" \break
}

%AKORDI
chordsA = \chordmode {
\jazzyChords
%\skip 8
	a1 | e | cis:m | h |
	a | e | cis:m | h | a2 h2 | a2 h2 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
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


%HRVATSKI TEKST

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

%DIO A
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c
						\chordsA
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
                        			\transpose e a
						\chordsA
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose e a,
			\scoreA
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAOne }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsATwo } 
	%\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAThree } 
	%\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAFour } 
	>>
	%\midi {}
}

%DIO B
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c
						\chordsB
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose e a
						\chordsB
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose e a,
			\scoreB
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsB }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}

%DIO C
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c
						\chordsC
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose e a
						\chordsC
						}
	\new Voice {
		        \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose e a,	
			\scoreC
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsC }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}


%ENGLESKI (STRANI) TEKST

%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") A
%"kitica 1 (A)"
%	}
%}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%"kitica 2 (A)"
%	}
%}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") B
%"refren (B)"
%	}
%}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") C
%"chorus (C)"
%	}
%}

}
     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
