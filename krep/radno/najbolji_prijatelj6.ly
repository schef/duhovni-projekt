\version "2.14.2"

#(define naslov "NAJBOLJI PRIJATELJ" )
#(define autor "DRAŽEN I DOMAGOJ PAVIN" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "Copyright Information ©" )

#(define tonalitet "d" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

%NOTE
scoreA = \relative c' {
	\key d \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	\partial 4
	%\repeat volta 2 {
	%}
	d8 e8 |
	fis8 d a a ~ a8 fis'4 e8( | 
	d2.) cis8 d |
	e4 e8 d e4 a8 fis ~ |
	fis2 ~ fis8 fis e d |
	e8 d2.( b8 |
	a2 ~ a8) fis' e d |
	e8 fis4 fis8 ~ fis2 |
	r2 r4 d8 e |
	fis8 d a a ~ a8 fis'4 e8( | 
	d2.) cis8 d |
	e4 e8 d e4 a8 fis ~ |
	fis2 ~ fis8 fis e d |
	e8 d ~ d2. ~ |
	d2 ~ d8 fis e d |
	e8 d4 d8 ~ d2 |
	r2 r4 d8 e |
	fis8 d4 a8 ~ a8 fis'4 e8( |
	d2.) cis8 d |
	\times 2/3 { e4 cis a ~ } a8 g'4 fis8 ~ |
	fis2 ~ fis8 fis e d |
	e4 d8 d ~ d2 |
	r2 r8 fis8 e d |
	e8 d4 d8 ~  d2 |
	{\set Timing.measurePosition = #(ly:make-moment -3 4) r2 r4 } |
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
	\partial 4
	d8 d |
	fis8 g4 a8 ~ a8 d, d d |
	fis8 g4 a8 ~ a8 d, d d |
	fis8 g4 a8 ~ a8 a a a |
	\times 2/3 { a4 fis e ~ } e8 d d d |
	fis8 g4 a8 ~ a8 d, d d |
	fis8 g4 a8 ~ a4 d,8 d |
	fis8 g4 a8 ~ a8 a a a |
	\times 2/3 { a4 fis e ~ } e4 a,8 a |
	h8 d16 d ~ d e8. d2 |
	r2 r4 d8 e |
	fis8 e16 e ~ e d8. e2 |
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
	\skip 4
	d2 d/fis | g1 | a | h:m |
	ais | a | d | g2 a2 |
	d2 d/fis | g1 | a | h:m |
	ais | a | d | g2 a2 |
	d2 d/fis | g1 | a | h:m |
	ais | a | d | d2. |

%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
	\skip 4
	h1:m | fis:m | g | a |
	h:m | fis:m | g | a |
	g | g | a | a |

}

chordsC = \chordmode {
	ces1
}

chordsD = \chordmode {
	ces1
}

%AKORDI STUPNJEVI

romanChordsA = \chordmode {
	\skip 4
	c2 c/e:8 | f1 | g | a |
	gis | g | c | f2 g2 |
	c2 c/e:8 | f1 | g | a |
	gis | g | c | f2 g2 |
	c2 c/e:8 | f1 | g | a |
	gis | g | c | c2. | 
}

romanChordsB = \chordmode {
	\skip4
	a1 | e | f | g |
	a1 | e | f | g |
	f | f | g | g |

}

romanChordsC = \chordmode {
	ces1
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Svo -- ja sr -- ca o -- tvo -- ri -- te
Svo -- ju du -- šu pri -- pre -- mi -- te
Za sve -- tu va -- tru što "s Ne" -- ba si -- la -- zi

Svo -- je o -- či o -- tvo -- ri -- te
Svo -- je grije -- he o -- pe -- ri -- te
U sve -- toj vo -- di što "s Ne" -- ba si -- la -- zi

I -- sus do -- la -- zi po nas
I -- sus do -- la -- zi po nas
I voj -- ska an -- đe -- la što put mu pri -- pra -- vlja
}

lyricsB = \lyricmode {
Ja -- nje Ne -- be -- sko što krv je pro -- li -- lo
Za nas se pre -- da -- lo, grije -- he o -- tku --pi -- lo
Pr -- vi i Po -- slje -- dnji, Al -- fa i O -- me -- ga
Svije -- ta Spa -- si -- telj, naj -- bo -- lji pri -- ja -- telj 

I -- sus do -- la -- zi po nas
I -- sus do -- la -- zi po nas
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
