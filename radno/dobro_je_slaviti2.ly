\version "2.14.2"

#(define naslov "DOBRO JE SLAVITI" )
#(define autor "FRANK BOSCH" )
#(define mjera "UBRZAVAJUĆA | ŽIDOVSKA" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "Copyright Information ©" )

\include "jazzchords.ly"
\include "deutsch.ly"
\include "config.ly"

%NOTE
scoreA = {
	\key h \minor
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	fis'4 h4 fis'4 h8 h8 |
	g'8 a'8 g'4 fis'4 a'4 |
	h'8 a'8 g'4 fis'8 e'8 d'4 |
	e'8 e'8 d'8 e'8 fis'4 r4
	\bar ":|" \break
}

scoreB = {
	\key h \minor
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #9
	%\partial 4
	r2 r4. \wstem #'(-2 . 2) h8 |
	h8 cis'8 d'4 cis'4 e'4 |
	d'4 a'4 a'4 g'8 g'8 |
	fis'8\( e'8\) d'4 e'8\( a'4\) g'8 |
	fis'2 fis'4 r8 \wstem #'(-2 . 2) r8|
	\bar "||" \break
}

scoreC = {
	\key h \minor
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #19
	%\partial 2
	\repeat volta 2 {
	g'2. a'8 g'8 |
	fis'4.\( e'8\) e'2 |
	fis'4 fis'4 fis'4 fis'4 |
	e'4 d'4 r2 |
	e'2. fis'8\( e'8\) |
	d'2 cis'2 | }
	\alternative {
	{d'2 d'4 d'4 | e'4.\( fis'8\) fis'2 |}
	{d'2 e'4 d'4 | cis'2 b2 | }
	}

	\bar "||" \break
}

scoreD = {
	\key h \minor
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") D }
	\set Score.currentBarNumber = #19
	%\partial 2
fis'4 b4 fis'4 h8 h8 |
g'8 a'8 g'4 fis'4 a'4 |
h'8 a'8 g'4 fis'8 e'8 d'4 |
e'8 e'8 d'8 cis'8 h4 r4 \bar "|."

	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
\jazzyChords
%\skip 8
	h1:m a2 d2
	e:m b:m e:m fis
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
\jazzyChords
	s1
	h2:m a2 d e:m
	g a fis2 fis2
}

chordsC = \chordmode {
\jazzyChords
	e1:m a d h:m
	e:m fis h:m a2/cis d
	h1:m fis2 b:m
}

chordsD = \chordmode {
\jazzyChords
h1:m a2 d2
e:m h:m e:m h:m
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Do -- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji;
}

lyricsB = \lyricmode {
Na -- vije -- šta -- ti ju -- trom lju -- bav tvo -- ju
i no -- \skip 8 ću vjer -- \skip 4 nost tvo -- ju
}

lyricsC = \lyricmode {
Ka -- ko su sil -- \skip 8 na dje -- la tvo -- ja, Bo -- že
I du -- \skip 8 bo -- ki na -- u -- mi tvo -- \skip 8 ji
na -- u -- mi tvo -- ji
}

lyricsD = \lyricmode {
Do -- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji!
}

\book {

%DIO A
\score {
	<<
	\new ChordNames {	
						\override ChordName #'font-size = #fontStupnjevaVelicina
						\override ChordName #'font-name = #fontStupnjeva
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c
						\chordsA
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #fontAkordiVelicina
						\override ChordName #'font-name = #fontAkordi
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
	%\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsATwo } 
	%\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAThree } 
	%\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAFour } 
	>>
	%\midi {}
}

%DIO B
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #fontStupnjevaVelicina
						\override ChordName #'font-name = #fontStupnjeva
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c
						\chordsB
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #fontAkordiVelicina
						\override ChordName #'font-name = #fontAkordi
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
						\override ChordName #'font-size = #fontStupnjevaVelicina
						\override ChordName #'font-name = #fontStupnjeva
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c
						\chordsC
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #fontAkordiVelicina
						\override ChordName #'font-name = #fontAkordi
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

%DIO D
\score {
	<<
	\new ChordNames {	\italianChords
						\override ChordName #'font-size = #fontStupnjevaVelicina
						\override ChordName #'font-name = #fontStupnjeva
						%\override ChordName #'font-shape = #'italic
						\set chordChanges = ##t
						\transpose h c
						\chordsD
						}
	\new ChordNames {   \semiGermanChords
						\override ChordName #'font-size = #fontAkordiVelicina
						\override ChordName #'font-name = #fontAkordi
						\set chordRootNamer = #my-chord-name->pop-markup
						\set chordChanges = ##t
						%\transpose e c
						\chordsD
						}
	\new Voice {
		        \override Score.BarNumber #'font-name = "JohnSans Medium Pro"
                        %\transpose d h,	
			\scoreD
			}
	\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsD }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
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

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
