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
evenFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "The Heart of Worship” by Matt Redman
Copyright © 1997 Thankyou Music" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "KAD SVE UTIHNE" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MATT REDMAN" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	r4. a'16 a16 a8 d,4 e8 ~ |
	e4. e8 fis8 e e d16 d |
	r4. a'16 a16 a8 d,4 e8 ~ |
	e1 |
	r4. a16 a16 a8 d,4 e8 ~ |
	e2 fis8 e e d16 d |
	r4. a'16 a16 a8 d,4 e8 ~ |
	e1 |
	r8 g8 g g fis e d e ~ |
	e4. e16 d fis8 e d h |
	r8 g'8 g g fis e d e ~ |
	e1 |
	r8 g8 g g fis e d e ~ |
	e4. e16 d fis8 e d h |
	r8 g'8 g g a fis h e, ~ |
	e1 |	
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
	\set Score.currentBarNumber = #17
	%\partial 4
	r8 a'8 a a a d, d h' ~ |
	h8 a4 fis8 ~ fis8 e4 d8 |
	fis8 fis g fis ~ fis4 r4 |
	fis8[ fis] g fis4 e8 d8[ d] |
	r8 a'8 a a a d, d h' ~ |
	h8 a4 fis8 ~ fis8 e4 d8 |
	fis8 fis g fis ~ fis4 r4 |
	fis8[ fis] g fis4 e8 d8[ d] |
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


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Kad sve u -- ti -- hne
I gla -- zba pre -- sta -- ne
Te -- bi do -- la -- zim
Že -- lim do -- nije -- ti
Ne -- što po -- se -- bno
Što te ra -- du -- je

Vi -- še od sa -- me pje -- sme
Ne -- što mno -- go du -- blje
Do -- no -- sim te -- bi na dar
Pro -- ni -- češ du -- šu mo -- ju
Vi -- diš sr -- ce mo -- je
Ku -- ca li o -- no za tebe
}

lyricsB = \lyricmode {
Do -- la -- zim po -- no -- vo bli -- že te -- bi
Jer va -- žan si ti
Va -- žan si ti I -- su -- se
O -- pro -- sti Go -- spo -- de za sve dru -- go
Kada va -- žan si ti
Va -- žan si ti I -- su -- se
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Vje -- čni Kra -- lju moj
Ne -- i -- zre -- ci -- vo
Si vrije -- dan ti
Sla -- bi bez -- vrije -- dni
Se -- be pre -- da -- jem
Da te pro -- sla -- vim

Vi -- še od sa -- me pje -- sme
Ne -- što mno -- go du -- blje
Do -- no -- sim te -- bi na dar
Pro -- ni -- češ du -- šu mo -- ju
Vi -- diš sr -- ce mo -- je
Ku -- ca li o -- no za tebe
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
						\transpose e c
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
						\transpose e c
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
