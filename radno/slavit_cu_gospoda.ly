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

%oddFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") "15"}}
oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "\"Made Me Glad\" by Miriam Webster
Copyright © 2001 Hillsong Publishing" \override #'(font-name . "JohnSans Medium Pro") "16"}}}
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
  title =  \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 "SLAVIT ĆU GOSPODA" }
  %subtitle = ""
  composer =  \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "MIRIAM WEBSTER" }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 "Copyright Information ©" }
  poet = \markup { \lower #1 \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #7 "256BPM | ROCK" }
}


%NOTE
scoreA = \relative c' {
	\key b \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	f4 f8 g8 ~ g2 |
	f4 es8 g ~ g b, ~ b4 |
	c4 c8 d ~ d2 |
	r2 r4 r8 b8 |
	f'4 f8 g8 ~ g2 |
	f4 es8 g ~ g b, ~ b8[ d8] ~ |
	d1 |
	r1 |
	f4 ~ f8 g8 ~ g2 |
	f4 es8[ g8] ~ g[ b,] ~ b c ~ |
	c4 c8 d ~ d2 |
	r1 |
	f4 f8 g8 ~ g2 |
	f4 es8 g ~ g4 f8 es8 |
	f8( d8 ~ d2.) |
	r1 |
	g4 g8 g ~ g a4 b8 ~ |
	b1 |
	g4 g8 g ~ g a4 b8 |
	r4 \wstem #'(-2 . 2) r4 r2
	%{\set Timing.measurePosition = #(ly:make-moment -2 4) r4 }
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "||" \break
}

scoreB = \relative c' {
	\key b \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #21
	%\partial 2.
	r4 \wstem #'(-2 . 2) a'8 b8 ~ b c4 b8 ~ |
	b2 ~ b8[ a] b b ~ |
	b2 ~ b8[ a] b b ~ |
	b4. g8 ~ g[ a] b b ~ |
	b8 a4 g8 ~ g4 a8 b ~ |
	b4. f8 ~ f[ a] b b ~ |
	b4. f8 ~ f[ a]( b) b ~ |
	b8 a4 g8 ~ g a4 b8 ~ |
	b4 a8 g ~ g a4 b8 |
	b1 |
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
%\skip 8
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	b2/es es2 | b2/es es | f2/b b | f2/b b |
	es1 | es1 | c1:m | f1 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	%\skip 2.
	s1
	b1 | c:m | es | f |
	b | b/d | es | f |
	b | b |
}

chordsC = \chordmode {
\jazzyChords
	c1
}


%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sla -- vit ću Go -- spo -- da za -- u -- vijek
U nje -- ga se sva -- gda u -- zda -- jem
On me stra -- ha o -- slo -- bo -- dio
Ko -- rak moj on je u -- čvr -- sti -- o
Ne po -- sus -- ta -- jem
Pje -- vam Go -- spo -- du
}

lyricsB = \lyricmode {
Ti moj si štit sna -- ga sva
Sve što tre -- bam O -- slo -- bo -- di -- telj
Moj za -- klon sna -- žna ku -- la
Po -- moć u -- vijek do -- stup -- na u po -- tre -- bi
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Sa -- mo te -- be i -- mam na ne -- bu
Ni -- ko -- ga dru -- gog ja ne že -- lim
Ti me ra -- du -- ješ pje -- vam Go -- spo -- du
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
						\transpose b c
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
						\transpose b c
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
