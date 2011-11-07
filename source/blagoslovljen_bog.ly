\version "2.14.2"

#(set-default-paper-size "biblija")
#(set-global-staff-size 16)

\paper{
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
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Blessed Be Your Name\" by Matt and Beth Redman, Copyright ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
print-page-number = ##f
%first-page-number = #16
%print-first-page-number = ##t
%auto-first-page-number = ##t
ragged-last-bottom=##t
%annotate-spacing = ##t
}
\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "BLAGOSLOVLJEN BOG" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MATT I BETH REDMAN" }
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Blessed Be Your Name\" by Matt and Beth Redman, Copyright ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key d \major
	%\tempo 4 = 96
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\repeat volta 2 { 
	%}
	r4 r8 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a2 |
	fis8[ e] e d d2 |
	r1 | \break
	r4 r8 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a4. e8 |
	fis8 fis4 fis8 ~ fis a4 g8 ~ |
	g8 a4 a8 ~ a2 |
	fis8[ e] e d d2 |
	r1 |
	r4 d'8 d d4 a4 |
	a h cis d |
	r4 e4 e d |
	h1 |
	r4 d8 d d4 a4 |
	a h cis d |
	r4 e4 e d |
	\set Timing.measurePosition = #(ly:make-moment -2 4)
	h2 |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar ""
	\override Staff.TimeSignature #'style = #'()
}

scoreB = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #25
	\partial 2
	fis'8[ e] e d |
	d4. d8 ~ d e4 e8 ~ |
	e2 fis8[ e] e d |
	d1 ~ |
	d2 fis8[ e] e d |
	d4. d8 ~ d e4 e8 ~ |
	e2 fis8[ e] e d |
	fis4( g8) fis ~ fis e4 d8 ~ |
	%\set Timing.measurePosition = #(ly:make-moment -2 4)
	d1 |
	\bar "||" \break
}

scoreC = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #33
	%\partial 4
	fis'4 fis fis4. e8 |
	e2 r2 |
	fis4 fis fis4. e8 |
	e8( d4.) r4 r8 d8 |
	fis4 fis fis4. e8 |
	e2 r4 r8 d8 |
	fis4 g fis4. e8 |
	e8( d4.) r2 |
	\bar "|." \break
}

chordsA = \chordmode {
\jazzyChords
%\skip 8
	h1 | fis | gis:m | e |
	h1 | fis | e | e |
	h1 | fis | gis:m | e |
	h1 | fis | e | e |
	h1 | fis | gis:m | e |
	h1/dis | fis | gis:m | e2 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 2
	h1 | fis | gis:m | e |
	h1 | fis | gis2:m fis2 | e1|
}

chordsC = \chordmode {
\jazzyChords
	h1 | fis | gis:m | e |
	h1 | fis | gis:m | e |
}

lyricsAOne = \lyricmode {
Bla -- go -- slov -- ljen Bog u ze -- mlji pu -- noj o -- bi -- lja
Kad iz -- lije -- va svoj bla -- go -- slov, bla -- go -- slov -- ljen Bog
Bla -- go -- slov -- ljen Bog kad na -- đem se u pu -- sti -- nji
\skip8 I di -- vlji -- nom ho -- dam sam, bla -- go -- slov -- ljen Bog

Za sve bla -- go -- slo -- ve tvo -- je pro -- slav -- ljam te
Ka -- da ta -- ma sve za -- mra -- či, tad mo -- gu reć
}

lyricsB = \lyricmode {
Bla -- go -- slov -- ljen Bog, Go -- spod moj
Bla -- go -- slov -- ljen Bog
Bla -- go -- slov -- ljen Bog, Go -- spod moj
Bla -- go -- slov -- ljen Bog, Go -- spod moj
}

lyricsC = \lyricmode {
Ti nam da -- ješ sve
Ti nam u -- zi -- maš
Svim sr -- cem pje -- vam ti
Da, bla -- go -- slov -- ljen Bog
}

lyricsATwo = \lyricmode {
Bla -- go -- slov -- ljen Bog \skip8 ka -- da sun -- ce gri -- je me
\skip8 I sve ka -- ko tre -- ba je, bla -- go -- slov -- ljen Bog
Bla -- go -- slov -- ljen Bog na pu -- tu pu -- nom ne -- vo -- lja
Kad bol pri -- ti -- sne o -- da -- svud, bla -- go -- slov -- ljen Bog
}

\book {
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c \chordsA }
	\new ChordNames {	\germanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsA }
	\new Voice {
			\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
			\transpose d h,
			\scoreA }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAOne }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsATwo } 
	>>
	%\midi {}
}
\pageBreak
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c \chordsB }
	\new ChordNames {   \germanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsB }
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

\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #0
						\override ChordName #'font-name = #"JohnSans White Pro"
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c \chordsC }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsC }
	\new Voice {
			\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
			\transpose d h,
			\scoreC }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsC }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}


\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
	\box \override #'(font-name . "JohnSans Medium Pro") A
Blessed Be Your Name
In the land that is plentiful
Where Your streams of abundance flow
Blessed be Your name

Blessed Be Your name
When I'm found in the desert place
Though I walk through the wilderness
Blessed Be Your name
Every blessing You pour out
I'll turn back to praise
When the darkness closes in, Lord
Still I will say
}}
\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
Blessed be Your name
When the sun's shining down on me
When the world's 'all as it should be'
Blessed be Your name

Blessed be Your name
On the road marked with suffering
Though there's pain in the offering
Blessed be Your name

Every blessing You pour out
I'll turn back to praise
When the darkness closes in, Lord
Still I will say
}}

\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
	\box \override #'(font-name . "JohnSans Medium Pro") B
Blessed be the name of the Lord
Blessed be Your name
Blessed be the name of the Lord
Blessed be Your glorious name
}}

\markup { \override #'(font-name . "JohnSans White Pro")
	\wordwrap {
	\box \override #'(font-name . "JohnSans Medium Pro") C
You give and take away
You give and take away
My heart will choose to say
Lord, blessed be Your name
	}
}
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
