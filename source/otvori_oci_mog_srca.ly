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
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Open The Eyes of My Heart, Lord\" by Paul Baloche, Copyright ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "OTVORI OČI MOG SRCA" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "PAUL BALOCHE" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}

scoreA = \relative c' {
	\key g \major
%	\partial 4
\mark \markup { \box \bold A }
\repeat volta 2 { 
	h'8 d d d4 h8 d8 d ~ |
	d h ~ h4 r2 |
	h8 d d d4 h8 e d ~ |
	d2 \times 2/3 {h4 a g} |
	a4 g8 g ~ g2 |
	r2 \times 2/3 {h4 a g} |
	a g8 g ~ g2 |
	
}
	\alternative {
		{r1}
		{r2 \set Timing.measurePosition = #(ly:make-moment -2 4)}
	}
	\bar ""
}

scoreB = \relative c' {
	\key g \major
\mark \markup { \box \bold B }
\set Score.currentBarNumber = #10
	\partial 2
	h'4 d |
	d h8 d8 ~ d[ e] ~ e[ e] ~ | 
	e2 r2 |
	e8[ d] d[ h] e[ d] h[ h] ~ |
	h8 a ~ a4 r2 |
	h8 d4 h8 d[ h] d[ e] ~ |
	e4. h8 h[ h] d4 |
	e d8[ d] ~ d h4 h8 ~ |
	h[ a] ~ a2. |
	r1 |
	\bar "||"	
}

scoreC = \relative c' {
	\key g \major
\mark \markup { \box \bold C }
\set Score.currentBarNumber = #19
	e'4 d8 d ~ d h4 h8 ~ | 
	h a( g2.) |
	e'4 d8 d ~ d h4 h8 ~ |
	h8 a ~ a2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h a( g4) \times 2/3 {h a g} |
	a4 g8 g ~ g2 |
	r1 |
	\bar "|."	
}

chordsA = \chordmode {
\jazzyChords
	g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

chordsB = \chordmode {
\jazzyChords
	\skip 2 | d1 | e:m | c | d | 
	d | e:m | a:m | d | d |
}

chordsC = \chordmode {
\jazzyChords
	g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
O -- tvo -- ri o -- či mog sr -- ca
O -- tvo -- ri, Go -- spo -- de, ti
Že -- lim te vi -- dje -- ti
Že -- lim te vi -- dje -- ti
}

lyricsB = \lyricmode {
Vi -- djet te -- be i -- znad svih
O -- ba -- sja -- nog svje -- tlo -- šću sla -- ve
Ti i -- zlij lju -- bav na nas
Dok pje -- va -- mo: sve -- ti, sve -- ti, sve -- ti
}

lyricsC = \lyricmode {
Sve -- ti, sve -- ti, sve -- ti
Sve -- ti, sve -- ti, sve -- ti
Sve -- ti, sve -- ti, sve -- ti
Že -- lim te vi -- dje -- ti
}

lyricsATwo = \lyricmode {
O
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
						\transpose g c
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
						\transpose g c
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
						\override LyricText #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose g c
						\chordsC
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override LyricText #'font-name = #"JohnSans Medium Pro"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						%\transpose e c
						\chordsC
						}
	\new Voice {
		        \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        %\transpose d h,	
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
