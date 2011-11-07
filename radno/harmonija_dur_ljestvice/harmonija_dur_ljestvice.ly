\version "2.14.2"

#(define naslov "HARMONIJA DUR LJESTVICE" )
#(define autor "MARK LEVINE" )
#(define mjera "SCHEF" )

#(define brojPjesme "pr. 1" )
#(define brojStraniceLijevo "" )
#(define brojStraniceDesno "" )
#(define copyright "Copyright Information ©" )

\include "jazzChords.ly"
\include "romanChords.ly"
\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
%#(set-global-staff-size 35)

avoid = \markup {\hspace #-2.5 "\"avoid\""}

%NOTE
scoreA = {
	\time 8/4
	\key a \minor
	\clef bass
	%triola = \times 2/3
	\once \override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\slurDotted
	\mark \markup { \italic \small "jonska"}
	c4 d e f^\markup {\hspace #-2.5 "\"avoid\""}-off g a h c' \bar "||" \break
	\mark \markup { \italic \small "dorska"}
	c4 d es f g a b c' \bar "||" \break
	\mark \markup { \italic \small "frigiska"}
	c4 des es f g as b c' \bar "||" \break
	\mark \markup { \italic \small "lidijska"}
	c4 d e fis g a h c' \bar "||" \break
	\mark \markup { \italic \small "miksolidijska"}
	c4 d e f^\avoid g a b c' \bar "||" \break
	\mark \markup { \italic \small "eolska"}
	c4 d es f g as b c' \bar "||" \break
	\mark \markup { \italic \small "lokrijska"}
	c4 des^\avoid es f ges as b c' \bar "||" \break
	\mark \markup { \italic \small "miksolidijska"}
	c4 d e f^\markup {\hspace #-6 "bez \"avoid\""} g a b c' \bar "||" \break
}

%AKORDI
chordsA = \chordmode {
%\skip 8
	c1:maj c1:maj
	c:min7 c:min7
	c:sus4.9- c:sus4.9-
	c:maj7.4+ c:maj7.4+
	c:7 c:7
	c:min6- c:min6-
	c:min7.5- c:min7.5-
	c:sus4 c:sus4
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
"1" "9" "3" "11" "5" "13" "7" "1"
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
	%\new ChordNames { \romanChords
	%		  \romanDegreeChords
			  %\transpose h c
	%		  \set chordRootNamer = #my-chord-name->cigo-markup
	%		  \chordsA
	%		}
	\new ChordNames { \jazzyChords 
			  \standardChords
                          %\transpose d h,
			  \chordsA
			}
	\new Voice { \voiceFont
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
