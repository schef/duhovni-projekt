\version "2.14.2"

#(set-default-paper-size "biblija")
#(set-global-staff-size 16)

\paper {
indent = 0
first-page-number = #34
print-first-page-number = ##t
auto-first-page-number = ##t
top-markup-spacing #'padding = #5
top-system-spacing #'padding = #15.27
%odvaja naslov header od systema
markup-system-spacing #'padding = #5
%markup-markup-spacing #'padding = #15
%odvaja prvi system od drugog ako nema markup
score-system-spacing #'padding = #5
%system-system-spacing #'padding = #5
last-bottom-spacing #'padding = #5
%ragged-last-bottom=##f
%annotate-spacing = ##t
}

\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "TEST" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "TEST" }
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
}

%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key e \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\repeat volta 2 { 
	%}
	c'1
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
c1
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

chordsA = \chordmode {
\jazzyChords
%\skip 8
	c1
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	c1
}

chordsC = \chordmode {
\jazzyChords
	c1
}

lyricsAOne = \lyricmode {
"test kitica 1"
}

lyricsB = \lyricmode {
"test refren"}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
"test kitica 2"
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
	\new Voice { \scoreA }
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
						\transpose e c \chordsB }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsB }
	\new Voice { \override LyricText #'font-name = #"JohnSans Text Pro" \scoreB }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsB }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}

%\score {
%	<<
%	\new ChordNames {	\italianChords
%						\override ChordName #'font-size = #0
%						\override LyricText #'font-name = #"JohnSans White Pro"
%						%\override ChordName #'font-shape = #'italic
%						\set chordChanges = ##t
%						\transpose e c \chordsC }
%	\new ChordNames {   \semiGermanChords
%						\override ChordName #'font-size = #3
%						\override LyricText #'font-name = #"JohnSans Medium Pro"
%						\set chordRootNamer = #my-chord-name->pop-markup
%						\set chordChanges = ##t
%						\chordsC }
%	\new Voice { \scoreC }
%	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsC }
%	>>
%	\layout {\context {\Staff \remove "Time_signature_engraver" }}
%	%\midi {}
%}
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
