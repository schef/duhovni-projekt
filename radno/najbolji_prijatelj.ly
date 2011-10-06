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

oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "NAJBOLJI PRIJATELJ" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "DRAŽEN I DOMAGOJ PAVIN" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key d \major
	\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\repeat volta 2 {
	%}
	d8 e8 |
	fis8 d a a ~ a8 fis'4 e8( | 
	d2.) cis8 d |
	e4 e8 d e4 a8 fis ~ |
	fis2 ~ fis8 fis e d |
	e8 d2.( b8 |
	a2 ~ a8) fis' e d |
	e8 fis4 fis8 ~ fis2 |
	r2 r4 d8 e |
	fis8 d a a ~ a8 fis'4 e8( | 
	d2.) cis8 d |
	e4 e8 d e4 a8 fis ~ |
	fis2 ~ fis8 fis e d |
	e8 d ~ d2. ~ |
	d2 ~ d8 fis e d |
	e8 d4 d8 ~ d2 |
	r2 r4 d8 e |
	fis8 d4 a8 ~ a8 fis'4 e8( |
	d2.) cis8 d |
	\times 2/3 { e4 cis a ~ } a8 g'4 fis8 ~ |
	fis2 ~ fis8 fis e d |
	e4 d8 d ~ d2 |
	r2 r8 fis8 e d |
	e8 d4 d8 ~  d2 |
	{\set Timing.measurePosition = #(ly:make-moment -3 4) r2 r4 } |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "||" \break
}

scoreB = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #25
	\partial 4
	d8 d |
	fis8 g4 a8 ~ a8 d, d d |
	fis8 g4 a8 ~ a8 d, d d |
	fis8 g4 a8 ~ a8 a a a |
	\times 2/3 { a4 fis e ~ } e8 d d d |
	fis8 g4 a8 ~ a8 d, d d |
	fis8 g4 a8 ~ a4 d,8 d |
	fis8 g4 a8 ~ a8 a a a |
	\times 2/3 { a4 fis e ~ } e4 a,8 a |
	h8 d16 d ~ d e8. d2 |
	r2 r4 d8 e |
	fis8 e16 e ~ e d8. e2 |
	r1 |
	\bar "|." \break
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
\skip 4
	d2 d/fis | g1 | a | h:m |
	b | a | d | g2 a2 |
	d2 d/fis | g1 | a | h:m |
	b | a | d | g2 a2 |
	d2 d/fis | g1 | a | h:m |
	b | a | d | d2. |


%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
	h1:m | fis:m | g | a |
	h:m | fis:m | g | a |
	g | g | a | a |
}

chordsC = \chordmode {
\jazzyChords
	c1
}


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Svo -- ja sr -- ca o -- tvo -- ri -- te
Svo -- ju du -- šu pri -- pre -- mi -- te
Za sve -- tu va -- tru što "s Ne" -- ba si -- la -- zi

Svo -- je o -- či o -- tvo -- ri -- te
Svo -- je grije -- he o -- pe -- ri -- te
U sve -- toj vo -- di što "s Ne" -- ba si -- la -- zi

I -- sus do -- la -- zi po nas
I -- sus do -- la -- zi po nas
I voj -- ska an -- đe -- la što put mu pri -- pra -- vlja
}

lyricsB = \lyricmode {
Ja -- nje Ne -- be -- sko što krv je pro -- li -- lo
Za nas se pre -- da -- lo, grije -- he o -- tku --pi -- lo
Pr -- vi i Po -- slje -- dnji, Al -- fa i O -- me -- ga
Svije -- ta Spa -- si -- telj, naj -- bo -- lji pri -- ja -- telj 

I -- sus do -- la -- zi po nas
I -- sus do -- la -- zi po nas
}

lyricsC = \lyricmode {
"c dio"
}

lyricsATwo = \lyricmode {
"test kitica 2"
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
						\transpose d c
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
						\transpose d c
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
