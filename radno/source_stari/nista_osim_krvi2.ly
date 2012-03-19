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
top-system-spacing #'padding = #18.3

markup-markup-spacing #'padding = #3

system-system-spacing #'padding = #1
%system-system-spacing #'minimum-distance = #1
system-system-spacing #'stretchability = #0
score-system-spacing #'stretchability = #5
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Nothing But The Blood\" by Matt Redman, Copyright ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "NIŠTA OSIM KRVI" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MATT REDMAN" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key d \major
	\partial 8
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
\repeat volta 2 { 
	d16 e |
	fis2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis2 a8 a16 h ~ h g8 fis16 ~ |
	fis2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis2 a8 g16 fis ~ fis g8 e16 ~ |
	e2 a8 g16 fis ~ fis g8 g16 ~ |
	g2 a8 g16 fis ~ fis g8 fis16 ~ |
	fis1 |
}
	\alternative {
		{\set Timing.measurePosition = #(ly:make-moment -7 8) r2 r4 r8 }
		{\set Timing.measurePosition = #(ly:make-moment -4 4 ) r1}
	}
	\bar "||" \break
}

scoreB = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #10
	e'8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e4. fis8 fis2 |
	r1 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8 fis4 fis8 ~ fis d4 e8 ~ |
	e fis4 fis8 ~ fis2 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e8[ e] e[ fis] e[ d] ~ d4 |
	e4. d8 d2 |
	r1 |
	\bar "|." \break
}

scoreC = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #19
	%\partial 2
	a''8 fis fis e fis2 ~ |
	fis1
	a8 fis fis e fis2 ~ |
	fis1
	e8 e e fis e d ~ d4 |
	e8 e e fis e d ~ d4 |
	e4. d8 d2 |
	r1 |

	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
\jazzyChords
	\skip 8
	d1 | h:m | d | h:m |
	a | g | d |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	d1 | d | h:m | h:m | 
	a | g | d | d |
	d | d | h:m | h:m |
	a | g | d | a2 g2 |
}

chordsC = \chordmode {
\jazzyChords
	d1 | d1 | h:m | h:m
	a | g | d1 | d1
}


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Tvo -- ja krv vi -- še go -- vo -- ri
Od svih va -- pa -- ja, pra -- znih, ze -- malj -- skih
O -- prav -- da -- va me, od sveg bra -- ni me
Kri -- ste, tvo -- ja krv
}

lyricsB = \lyricmode {
Što će grije -- he o -- pra -- ti
O -- pet nas is -- pu -- ni -- ti
Ni -- šta o -- sim kr -- vi
Ni -- šta o -- sim kr -- vi Kri -- sto -- ve
Što me či -- ni pot -- pu -- nim
Pri -- ja -- te -- ljem Gos -- pod -- njim
Niš -- ta o -- sim kr -- vi
Tvo -- je kr -- vi, Kra -- lju I -- su -- se
}

lyricsC = \lyricmode {
Hva -- la ti za krv
Hva -- la ti za krv
Ni -- šta o -- sim Kr -- vi
Tvo -- je kr -- vi, Kra -- lju I -- su -- se
}

lyricsATwo = \lyricmode {
Tvoj \skip8 križ mi -- lost svje -- do -- či
"O sr" -- cu O -- če -- vu "što put" nam pri -- pra -- vi
Hra -- bro kro -- čim sad, u si -- gur -- no -- sti
"Zbog kr" -- vi Kri -- sto -- ve
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
                        			\transpose d h
						\chordsA
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose d h,
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
						\transpose d h 
						\chordsB
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose d h,
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
						\transpose d c
						\chordsC
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose d h
						\chordsC
						}
	\new Voice {
		        \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose d h,
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
