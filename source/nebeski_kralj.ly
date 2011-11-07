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
top-system-spacing #'padding = #17.3

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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "NEBESKI KRALJ" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "BRUNO I VESNA LICENDER" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
}

%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key g \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\repeat volta 2 { 
	%}
	r8 e8 g8[ e] g[ g] g4 |
	r8 g8 h8[ g] g8 g8 fis4 |
	r8 d'4 d8 d[ c] h[ a] |
	a1 |
	r8 e8 g8[ e] g[ g] g4 |
	r4 h8[ g] g8[ fis] fis4 |
	r8 d'8 d8[ d] d[ c] h[ a] |
	a1 |
	r4 r8 a8 h c4 d8 ~ |
	d1 |
	r4 r8 d8 ~ d8[ c] h d |
	h4. a8 ~ a2 |
	r2 h8 c4 d8 ~ |
	d1 |
	r8 e8 e[ d] e8 e4 d8 |
	e8 d4 d8 ~ d2 |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "||" \break
}

scoreB = \relative c' {
	\key a \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #17
	%\partial 4
	r4 e'4 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r2 e8[ e] cis fis |
	e1 |
	r2 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r2 e8[ e] cis fis |
	e1 |
	r4 e4 e8[ d] cis h ~ |
	h8 cis ~ cis2. |
	r4 r8 e8 e[ e] cis fis |
	e1 |
	r2 e8[ d] cis h ~ |
	h8 cis4. ~ cis2 |
	r4 a8[ a] a[ a] fis h |
	a1 |
	\bar "|." \break
}

scoreC = \relative c' {
	\key g \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #33	
	\partial 2
	h'4 d |
	e d8 d ~ d h4 h8 ~ | 
	h a g2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h8 a ~ a2. |
	e'4 d8 d ~ d h4 h8 ~ |
	h a g4 \times 2/3 {h a g} |
	a4 g8 g ~ g2 |
	r1 |
	\bar "|." \break
}

chordsA = \chordmode {
\jazzyChords
%\skip 8
	e2:m c2 | g d | e:m c | d1 |
	e2:m c | g d | e:m c | d1 |
	a1:m | d | a:m | d |
	a1:m | d | c | d |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
	a1 | e/gis | fis:m | d |
}

chordsC = \chordmode {
\jazzyChords
	\skip 2 | g1 | g | d/fis | d/fis |
	c/e | c | g | g |
}

lyricsAOne = \lyricmode {
On vo -- li gle -- da -- ti \skip 8 mo -- je li -- \skip 8 ce
Bo -- ju mo -- jih o -- či -- ju
I -- skre -- ni o -- smje -- si, ža -- rke mo -- li -- tve
Nje -- go -- vo sr -- ce do -- ti -- ču

A sr -- ce zna
Ti si mo -- ja lju -- bav, I -- su -- se
U sno -- ve svo -- je po -- ve -- di me
}

lyricsB = \lyricmode {
Moj Ne -- be -- ski Kralj vla -- dar je sve -- ga
Ze -- mlja i Ne -- bo nek' sla -- ve nje -- ga
Moj Ne -- be -- ski Kralj po -- bje -- đu -- je u -- vijek
Vla -- da u sla -- vi ju -- čer, da -- nas, za -- u -- vijek
}

lyricsC = \lyricmode {
I
}

lyricsATwo = \lyricmode {
Tvo -- ja do -- bro -- ta me na lju -- bav po -- ti -- če
Že -- lim bi -- ti ka -- o ti
Ru -- ka i -- spru -- že -- na pre -- ma sva -- ko -- me
\skip 8 U -- vijek spre -- mna po -- mo -- ći
}

\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose g c \chordsA }
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
						\transpose a c \chordsB }
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
						\transpose g c \chordsC }
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
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
