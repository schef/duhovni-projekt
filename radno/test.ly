\version "2.14.2"

#(define naslov "TEST" )
#(define autor "FOO BAR" )
#(define mjera "FUNNY BARNY" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "Copyright Information ©" )

\include "jazzChords.ly"
\include "romanChords.ly"
\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
#(set-global-staff-size 35)

%NOTE
scoreA = {
	\key a \minor
	\mark \markup \abox A
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
	c'1 d' e' f' g'
	\bar "||" \break
}

%AKORDI
chordsA = \chordmode {
%\skip 8
	c1:min9 d:sus4 es:dim fis:maj7 b:aug
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
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
	\new ChordNames { \romanChords
			  \romanDegreeChords
			  %\transpose h c
			  \set chordRootNamer = #my-chord-name->cigo-markup
			  \chordsA
			}
	\new ChordNames { \jazzyChords 
			  \standardChords
                          %\transpose d h,
			  \chordsA
			}
	\new Voice { \voiceFont
                     %\transpose d h,
		     \scoreA
		   }
	%\addlyrics { \override LyricText #'font-name = #"JohnSans Text Pro" \lyricsAOne }
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
