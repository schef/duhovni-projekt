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
ragged-right = ##f
system-system-spacing #'padding = #1
%system-system-spacing #'minimum-distance = #1
system-system-spacing #'stretchability = #0
score-system-spacing #'stretchability = #5
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
EvenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "VOLIM TE" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MARIJA LACKOVIĆ" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256 BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key a \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\repeat volta 2 {
	%}
	r4 e'8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 cis2 |
	h1 |
	r4 e8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 e2 |
	%\set Timing.measurePosition = #(ly:make-moment -3 4)
	e2. \wstem #'(-4 . 4) r4 |
	%e2.-\tweak #'extra-offset #'(3 . -6)^\markup { \override #'(thickness . 1.5) \draw-line #'(0 . 9) } \bar "'" r4 |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
%	\bar "||" \break
}

scoreB = \relative c' {
	\key a \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #16
	%\partial 4
	r2 r4 \wstem #'(-2 . 2) gis''8 a ~ |
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 gis2 |
	e1 |
	fis2 a2 |
	gis2. gis8 a ~|
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 h |
	a1 |
	fis2 a |
	gis1 |	
	\bar "||" \break
}

scoreC = \relative c' {
	\key a \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #32
	%\partial 2
	a''2 gis |
	e1 |
	a2 gis |
	e1 |
	a2 gis |
	e1 |
	fis2 a |
	gis1	
	\bar ":|"
}

%AKORDI
chordsA = \chordmode {
\jazzyChords
%\skip 8
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e |
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e1 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	%\skip 4
	s1 
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
}

chordsC = \chordmode {
\jazzyChords
	a1 | a | e/gis | e/gis |
	fis1:m | d | h:m | e
}


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sla -- va, sla -- va te -- bi, O -- če
Stvo -- ri -- te -- lju sve -- mi -- ra i ze -- mlje sve, ze -- mlje sve
Sla -- va, sla -- va te -- bi, O -- če
Što to -- li -- ko lju -- bi -- o si cije -- li svijet, cije -- li svijet
}

lyricsB = \lyricmode {
Pje -- vam, u vi -- si -- nu pru -- žam ru -- ke
Po -- di -- žem svoj glas da ču -- ju svi da si naj -- ve -- ći
Ple -- šem, jer me ra -- dost i -- spu -- nja -- va
Sr -- ce vje -- ru -- je i je -- zik pri -- zna -- je: Vo -- lim te
}

lyricsC = \lyricmode {
Vo -- lim -- te
Vo -- lim -- te
Vo -- lim -- te
Vo -- lim -- te
}

lyricsATwo = \lyricmode {
Sla -- va, sla -- va te -- bi, Kri -- ste
Za sve što u -- či -- ni -- o si za me -- ne, za me -- ne
Sla -- va, sla -- va te -- bi, Kri -- ste
Što u te -- bi i -- mam ži -- vot, i -- mam sve, i -- mam sve
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
						\transpose a c
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
						\transpose a c
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
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose a c
						\chordsC
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
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
