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
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Forever\" by Chris Tomlin
Copyright © 2000" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "ZAUVIJEK" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "CHRIS TOMLIN" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key f \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	\partial 4
	\repeat volta 2 {
	r8 c'8 |
	c8 c4 c8 ~ c c4 c8 |
	d4 c8 c ~ c2 |
	a'4 a8 a b a g g ~ |
	g8 f ~ f2 r8 c8 |
	d8 f4 f8 ~ f4 d8 f8 |
	g4 a8 f ~ f2 |
	a4 a8 a b a g g ~ |
	g8 f ~ f2 f4 ~ |
	f4 g2. ~ |
	g2.  a4 ~ |
	a4 f2. ~ |
	}
	\alternative {
	%prima
		{\set Timing.measurePosition = #(ly:make-moment -7 8) f2. ~ f8 }
	%sekunda
		{\set Timing.measurePosition = #(ly:make-moment -4 4) f2. f4 ~ }
	}
	f4 g2. ~ |
	g2. a4 ~ |
	a4 f2. ~ |
	f2. \wstem #' (-2 . 2) r4 |
	\bar "||" \break
}

scoreB = \relative c' {
	\key f \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #18
	%\partial 4
	\repeat volta 2 {
	r2 r4 \wstem #' (-2 . 2) a''8 c ~ |
	c8 a4 g8 ~ g g4 g8 ~ |
	g8 a4. ~ a4 a8 c ~ |
	c8 a4 g8 ~ g a4 f8 ~ |
	f2. a8 c8 ~ |
	c8 a4 g8 ~ g g4 g8 ~ |
	g8 a4. ~ a4 g8 g ~ |
	g8 f8 ~	f2 g8[ g] ~ |
	}
	\alternative {
	%prima
		{\set Timing.measurePosition = #(ly:make-moment -3 4) g8 f ~ f2 }
	%sekunda
		{\set Timing.measurePosition = #(ly:make-moment -4 4) g8 f8 ~ f2 g8 g ~}
	}
	g8 f ~ f2. |
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
	f1 | f | f | f |
	b | b | b | f |
	c | c | b/d | b2./d b8/d |
	b1/d | c | c | b/d | b |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	\skip 1
	f1 | f | d:m | d:m |
	c | c | b | b2. |
	b1 | b | b |
}

chordsC = \chordmode {
\jazzyChords
	c1
}


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Daj hva -- lu Bo -- gu i Kra -- lju svom
Vje -- čna je nje -- go -- va lju -- bav
On do -- bar je, on je u -- zvi -- šen
Vje -- čna je nje -- go -- va lju -- bav
Pje -- vaj hva -- lu
}

lyricsB = \lyricmode {
Bog za -- u -- vijek je vje -- ran
Bog za -- u -- vijek je jak
On za -- u -- vijek je s na -- ma
I u -- vijek i u -- vijek  
Za -- u -- vijek
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Mo -- ćnu ru -- ku on pru -- ža nam
Vje -- čna je nje -- go -- va lju -- bav
No -- vi ži -- vot nam da -- ru -- je
Vje -- čna je nje -- go -- va lju -- bav
Pje -- vaj hva -- lu
Pje -- vaj hva -- lu
}

lyricsAThree = \lyricmode {
Od i -- zla -- ska sun -- ca do za -- la -- ska
Vje -- čna je nje -- go -- va lju -- bav
Mi -- lo -- šću Bo -- žjom će -- mo ži -- vje -- ti
Vje -- čna je nje -- go -- va lju -- bav
Pje -- vaj hva -- lu pje -- vaj hva -- lu
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
						\transpose f c
						\chordsA
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
                        			\transpose f a,
						\chordsA
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose f a,
			\scoreA
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAOne }
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsATwo } 
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAThree } 
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
						\transpose f c
						\chordsB
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #3
						\override ChordName #'font-name = #"JohnSans Medium Pro Lilypond"
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						\transpose f a
						\chordsB
						}
	\new Voice {
		       	\override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        \transpose f a,
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
