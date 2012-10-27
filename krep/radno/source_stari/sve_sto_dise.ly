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
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Everything That Has Breath\" by Matt Redman Copyright © 1997 Thankyou Music" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "SVE ŠTO DIŠE" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MATT REDMAN" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	r4 gis'8 gis fis4 e |
	r4 gis8 gis fis4 e |
	r4 gis8 gis fis4 e |
	a4 gis gis fis8 e |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar ":|"
	r1 | r1 |
	\bar "||"
}

scoreB = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #7
	%\partial 4
	r8 h'8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h h cis h h16 h8 e,16 ~ |
	e4 r4 r2 |
	r8 h'8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h h cis h h16 h8 e,16 ~ |
	e4 r4 r4 r8 e8 |
	fis4 gis fis gis |
	h4 gis fis2 |
	fis4 gis fis gis |
	h4 gis fis2 |
	fis4 gis fis gis |
	h4 gis fis e |
	cis'1 |
	r1 |
	\bar "||" \break
}

scoreC = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #19
	%\partial 2
	c1
	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
\jazzyChords
%\skip 8
	e | h/dis | cis:m | a2 h2 |
	fis1:m | fis:m |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	e1 | h/dis | cis:m | a |
	e1 | h/dis | cis:m | a |
	fis:m | e/gis | fis:m | e/gis |
	fis:m | e/gis | a | a |
}

chordsC = \chordmode {
\jazzyChords
	c1
}


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sve što di -- še, sve što di -- še, sve što di -- še 
Ne -- ka sla -- vi te
}

lyricsBOne = \lyricmode {
Sla -- vim te u -- ju -- tro sla -- vim te na -- ve -- čer
U mla -- do -- sti i sta -- ro -- sti
Sla -- vim te smije -- \skip8 hom
I tu -- žan sla -- vim te
Pro -- sla -- vljam te -- be za -- u -- vijek

Kad spo -- zna -- li bi tvo -- ju moć
Sna -- gu lju -- bav bes -- kraj -- nu
Za -- u -- vijek bi te -- be sla -- vi -- li
}

lyricsBTwo = \lyricmode {
Sla -- ve -- te an -- đe -- li, ne -- be -- sa sla -- ve -- te
Sla -- ve te u -- vijek za -- u -- vijek
I ze -- mlja sla -- vi te
Sa svim stvo -- re -- nji -- ma
Sla -- ve te na -- ro -- di \skip8 svi
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Ja ću slavi -- ti, ja ću slavi -- ti
Svim što i -- mam te -- be sla -- vi -- ti
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
                        			%\transpose d h,
						\chordsA
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        %\transpose d h,
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
						%\transpose e c
						\chordsB
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        %\transpose d h,
			\scoreB
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsBOne }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsBTwo } 
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}

%DIO C
%\score {
%	<<
%	\new ChordNames {	\italianChords
%						\override ChordName #'font-size = #0
%						\override ChordName #'font-name = #"JohnSans White Pro"
%						%\override ChordName #'font-shape = #'italic
%						\set chordChanges = ##t
%						\transpose e c
%						\chordsC
%						}
%	\new ChordNames {   \semiGermanChords
%						\override ChordName #'font-size = #3
%						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
%						\set chordRootNamer = #my-chord-name->pop-markup
%						\set chordChanges = ##t
%						%\transpose e c
%						\chordsC
%						}
%	\new Voice {
%		        \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
%                        %\transpose d h,	
%			\scoreC
%			}
%	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsC }
%	>>
%	\layout {\context {\Staff \remove "Time_signature_engraver" }}
%	%\midi {}
%}


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
