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
top-system-spacing #'padding = #15.6

markup-markup-spacing #'padding = #3

system-system-spacing #'padding = #1
%system-system-spacing #'minimum-distance = #1
system-system-spacing #'stretchability = #0
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Hosanna\" by Brooke Fraser, Copyright © 2006 Hillsong Publishing" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "HOSANA" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "BROOKE FRASER" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key e \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	\repeat volta 2 { 
	r8 e'8 e[ cis] e4 fis8 a ~ |
	a gis ~ gis2. |
	e8[ e] e[ cis] e4 fis8 gis ~ |
	gis2 \times 2/3 {a4 gis cis, ~} |
	cis4. cis8 \times 2/3 {a'4 gis dis ~} |
}
	\alternative {
	%prima
		{dis1}
	%sekunda
		{\set Timing.measurePosition = #(ly:make-moment -3 4) dis2.}
	}
	\bar "" \break
}

scoreB = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #8
	\partial 4
	h''8 h ~ |
	h4. cis8 ~ cis4 gis8 fis ~ |
	fis4. gis8 ~ gis4. h8 |
	h[ a] a[ gis] gis4 fis ~ |
	fis2. h8 h ~ |
	h4. cis8 ~ cis4 gis8 fis ~ |
	fis4. gis8 ~ gis4. gis8 |
	a8[ gis] fis[ e] fis4 e ~|
	e1 |
	\bar "|." \break
}

scoreC = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #16
	\partial 8
	h''8 |
	cis8[ h] h[ a] a gis4 fis8 ~ |
	fis1 |
	h8[ a] a[ gis] gis[ fis] e fis |
	a8 gis4  cis,8 ~ cis2 |
	cis'8[ h] h[ a] a8 gis4 fis8 ~ |
	fis4 fis8 e h'4 gis |
	gis1 |
	r1 |
	cis8[ h] h([ a]) a gis4 fis8 ~ |
	fis1 |
	h8[ a] a[ gis] gis[ fis] e fis |
	a8 gis4  cis,8 ~ cis2 |
	cis'8[ h] h[ a] a8 gis4 fis8 ~ |
	fis4. e8 gis4 fis( |
	e1) |
	r1 |
	\bar "|." \break
}

chordsA = \chordmode {
\jazzyChords
%\skip 8
	e1*2 | cis1*2:m |
	fis1:m | h1 |
	h2. |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
	e2/gis a2 | h2 cis:m | a cis:m | h1 |
	e2/cis a2 | h2 cis:m | a2 h2 | e1 |
}

chordsC = \chordmode {
\jazzyChords
	\skip 8
	a1 | h | e | cis:m | a |
	h | cis:m | cis:m |
	a1 | h | e | cis:m | a |
	h | a | e | 
}

lyricsAOne = \lyricmode {
	\set stanza = #"1. "
	Ja vi -- dim kra -- lja sla -- ve
	Si -- la -- zi na o -- bla -- ku
	Ze -- mlja sva po -- dr -- hta -- va
	}

lyricsB = \lyricmode {
	Ho -- sa -- na, ho -- sa -- na
	Ho -- sa -- na u vi -- si -- ni
	Ho -- sa -- na, ho -- sa -- na
	Ho -- sa -- na u vi -- si -- ni
}

lyricsC = \lyricmode {
	I -- zlije -- či me i o -- či -- sti
	O -- či mi za ne -- vi -- đe -- no o -- tvo -- ri
	Na -- u -- či me lju -- bi -- ti ka -- ko lju -- biš ti
	Daj da tvoj bu -- dem sav
	Sve što je -- sam ra -- di tvo -- ga Kra -- ljev -- stva
	Dok sa ze -- mlje u -- la -- zim u vje -- čnost
}

lyricsATwo = \lyricmode {
	%\set stanza = #"2. "
	Ja vi -- dim lju -- bav, mi -- lost
	Pe -- re na -- še grije -- he sve
	Pje -- va -- mo, mi pje -- va -- mo
}

lyricsAThree = \lyricmode {
	\set stanza = #"2. "
	Ja vi -- dim po -- ko -- lje -- nje
	Mje -- sto tra -- ži, u -- sta -- je
	Po -- tpu -- no \skip 8 pre -- da -- no
	}

lyricsAFour = \lyricmode {
	%\set stanza = #"4. "
	Ja vi -- dim o -- bra -- će -- nje
	Do -- la -- zi dok mo -- li -- mo
	Pa -- da -- mo na ko -- lje -- na
	}

\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \chordsA }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsA }
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        %\transpose d h,
			\scoreA
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAOne }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsATwo } 
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAThree }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAFour } 
	>>
	%\midi {}
}

\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \chordsB }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsB }
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

\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose e c \chordsC }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsC }
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

\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
	\box \override #'(font-name . "JohnSans Medium Pro") A
I see the king of glory 
Coming on the clouds with fire
The whole earth shakes
The whole earth shakes

I see his love and mercy 
Washing over all our sin
The people sing
The people sing
	}
}

\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
I see a generation 
Rising up to take their place
With selfless faith
With selfless faith

I see a near revival 
Stirring as we pray and seek
We're on our knees
We're on our knees
	}
}

\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
	\box \override #'(font-name . "JohnSans Medium Pro") B
Hosanna
Hosanna
Hosanna in the highest
	}
}

\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
	\box \override #'(font-name . "JohnSans Medium Pro") C
Heal my heart and make it clean 
Open up my eyes to the things unseen
Show me how to love like you have loved me

Break my heart from what breaks yours
Everything I am for your kingdoms cause
As I go from nothing to 
Eternity
	}
}
}
     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
