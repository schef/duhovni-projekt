\version "2.14.1"

#(set-default-paper-size "biblija")
#(set-global-staff-size 16)

\paper{
indent = 0
top-markup-spacing #'padding = #5
%odvaja naslov header od systema
markup-system-spacing #'padding = #5
%markup-markup-spacing #'padding = #15
%odvaja prvi system od drugog ako nema markup
score-system-spacing #'padding = #5
%ragged-last-bottom=##f
%annotate-spacing = ##t
}
\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "BLAGOSLOVLJEN BOG" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MATT I BETH REDMAN" }
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
}
%\paper {
%indent = 0
%}

scoreA = \relative c' {
	\key d \major
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
        fis8[ e] e d ~ d2 |
        r1 |
        r4 r8 fis8 ~ fis a4 g8 ~ |
        g8 a4 a8 ~ a4. e8 |
        fis8 fis4 fis8 ~ fis a4 g8 ~ |
        g8 a4 a8 ~ a4. e8 |
        fis8 fis4 fis8 ~ fis a4 g8 ~ |
        g8 a4 a8 ~ a2 |
        fis8[ e] e d ~ d2 |
        r1 |
        r4 d'8 d d4 a4 |
        a h cis d |
        r4 e4 e d |
        h1 |
        r4 d8 d d4 a4 |
        a h cis d |
        r4 e4 e d |
        \set Timing.measurePosition = #(ly:make-moment -2 4) h2 |

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
	\partial 2
	fis'8[ e] e d |
        d4. d8 ~ d e4 e8 ~ |
        e2 fis8[ e] e d |
        d1 ~ |
        d2 fis8[ e] e d |
        d4. d8 ~ d e4 e8 ~ |
        e2 fis8[ e] e d |
        fis4( g8) fis ~ fis e4 d8 ~ |
        d1 |
	\bar "||" \break
}

scoreC = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #33
	%\partial 2
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
	d1 | a | h:m | g |
        d1 | a | g | g |
        d1 | a | h:m | g |
        d1 | a | g | g |
        d1 | a | h:m | g |
        d1/fis | a | h:m | g2 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 2
        d1 | a | h:m | g |
        d1 | a | h2:m a2 | g1 |

}

chordsC = \chordmode {
\jazzyChords
        d1 | a | h:m | g |
        d1 | a | h2:m a2 | g1 |
}

lyricsAOne = \lyricmode {

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
