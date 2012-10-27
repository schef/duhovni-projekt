\version "2.14.2"

#(define naslov "TEST" )
#(define autor "TEST" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "Copyright Information ©" )

#(define tonalitet "fis" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

%NOTE
scoreA = \relative c' {
	\key e \major
	\mark \markup { \abox A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
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
	\mark \markup { \abox B }
	\set Score.currentBarNumber = #9
	%\partial 4
	c1
	\bar "|." \break
}

scoreC = \relative c' {
	\key e \major
	\mark \markup { \abox C }
	\set Score.currentBarNumber = #19
	%\partial 2
	c1
	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
%\skip 8
	ces1
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
	ces1
}

chordsC = \chordmode {
	ces1
}

chordsD = \chordmode {
	ces1
}

%AKORDI STUPNJEVI

romanChordsA = \chordmode {
	ces1
}

romanChordsB = \chordmode {
	ces1
}

romanChordsC = \chordmode {
	ces1
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
"test kitica 1"
}

lyricsB = \lyricmode {
"test refren"
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
"test kitica 2"
}

\book {

%DIO A
\score {
  <<
  \new ChordNames { \romanMajorChords
                    \romanChordsA
                  }
  \new ChordNames { \standardChords
                   %\transpose d h,
                    \chordsA
                  }
  \new Voice { \voiceFont
               %\transpose d h,
               \scoreA
             }
  \addlyrics { \lyricsFont \lyricsAOne }
  %\addlyrics { \lyricsFont \lyricsATwo }
  %\addlyrics { \lyricsFont \lyricsAThree }
  %\addlyrics { \lyricsFont \lyricsAFour }
  >>
  %\midi {}
}

%DIO B

\score {
  <<
  \new ChordNames { \romanMajorChords
                    \romanChordsB
                  }
  \new ChordNames { \standardChords
                    %\transpose e c
                    \chordsB
                  }
  \new Voice { \voiceFont
               %\transpose d h,
               \scoreB
             }
  \addlyrics { \lyricsFont \lyricsB }
  >>
  \layout {\context {\Staff \remove "Time_signature_engraver" }}
  %\midi {}
}

%DIO C
%\score {
%  <<
%  \new ChordNames { \romanMajorChords
%                    \romanChordsC
%                  }
%  \new ChordNames { \standardChords
%                    \chordsC
%                  }
%  \new Voice { \voiceFont
%               %\transpose d h, 
%               \scoreC
%             }
%  \addlyrics { \lyricsFont \lyricsC }
%  >>
%  \layout {\context {\Staff \remove "Time_signature_engraver" }}
%  %\midi {}
%}

%ENGLESKI (STRANI) TEKST

%\markup { \lyricsExtFont)
%	\wordwrap {
%	\abox A
%"kitica 1 (A)"
%	}
%}
%
%\markup { \lyricsExtFont)
%	\wordwrap {
%"kitica 2 (A)"
%	}
%}
%
%\markup { \lyricsExtFont)
%	\wordwrap {
%	\abox B
%"refren (B)"
%	}
%}
%
%\markup { \lyricsExtFont)
%	\wordwrap {
%	\abox C
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
