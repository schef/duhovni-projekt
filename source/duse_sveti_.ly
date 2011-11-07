\version "2.14.1"

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
%system-system-spacing #'space = #1
oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "34"}

%oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright information ©" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "DUŠE SVETI, DOBRODOŠAO" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "BRUNO I VESNA LICENDER" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key g \major
	%\partial 4
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	\repeat volta 2 { 
        d'8 d16 d ~ d d8. e8 d16 c ~ c h8 d16 ~ |
        d1 |
        e8 e16 e ~ e g8. fis8 g16 a ~ a fis8 d16 ~ |
        d2 ~ d8.[ d16] d d8 e16 ~ |
        e8. e16 e e8 fis16 ~ fis4 fis16 fis fis fis ~ |
        fis4 fis16 g a a(  g4) g8 a16 h ~ |
        h8 g8 ~ g4 a8 g16 fis16 ~ fis a8 g16 ~ |	
	}
	
	\alternative {
	%prima
		{g1}
	%sekunda
		{r2 r4 \set Timing.measurePosition = #(ly:make-moment -3 4) }
	}
	\bar "||" \break
}

scoreB = \relative c' {
	\key g \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #9
	\partial 4
	\bar "|:"
	g''8 a16 h ~ |
        h8 g8 ~ g2 g8 a16 h ~ |
        h8 g8 ~ g2 g8 a16 h ~ |
        h8 g8 ~ g4 a8[ g16 fis] ~ fis a8 g16 ~ |
        \set Timing.measurePosition = #(ly:make-moment -3 4) g2. |
        \bar ":|"
}

scoreC = \relative c' {
}

chordsA = \chordmode {
\jazzyChords
%\skip 8
	g1 | g | c2 d2 | g1 |
        c2 d2 | h2:m e2:m | c2 d2 | g1 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 4
        c1 | e:m | c2 d2 | g2. |
}

chordsC = \chordmode {
}

lyricsAOne = \lyricmode {
Du -- še Sve -- ti, do -- bro -- do -- ša -- o
Du -- še Sve -- ti, do -- bro -- do -- ša -- o
U o -- vaj hram, u o -- vaj dom
Ov -- dje nek’ sve bu -- de po tvom
Du -- še Sve -- ti, do -- bro -- do -- ša -- o
}

lyricsB = \lyricmode {
Du -- še Sve -- ti, Du -- še Sve -- ti
Du -- še Sve -- ti, mi te tre -- ba -- mo
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Du -- še Sve -- ti, mi te tre -- ba -- mo
Du -- še Sve -- ti, mi te tre -- ba -- mo
U o -- ve da -- ne, go -- di -- ne
Za zad -- nju že -- tvu sprem -- lje -- ne
Du -- še Sve -- ti, mi te tre -- ba -- mo
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
                        \scoreA }
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
						\transpose g c \chordsB }
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\chordsB }
        \new Voice {
                        \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        %\transpose d h,
                        \scoreB }

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
