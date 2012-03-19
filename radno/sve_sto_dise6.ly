\version "2.14.2"

#(define naslov "SVE ŠTO DIŠE" )
#(define autor "MATT REDMAN" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "\"Everything That Has Breath\" by Matt Redman Copyright © 1997 Thankyou Music" )

#(define tonalitet "e" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

%NOTE
scoreA = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	r4 gis'8 gis fis4 e |
	r4 gis8 gis fis4 e |
	r4 gis8 gis fis4 e |
	a4 gis gis fis8 e |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar ":|"
	r1 | r1 |
	\bar "||"
}

scoreB = \relative c' {
	\key e \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #7
	%\partial 4
	r8 h'8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h h cis h h16 h8 e,16 ~ |
	e4 r4 r2 |
	r8 h'8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h gis h16 h8 cis16 ~ cis4 |
	r8 h8 h h cis h h16 h8 e,16 ~ |
	e4 r4 r4 r8 e8 |
	fis4 gis fis gis |
	h4 gis fis2 |
	fis4 gis fis gis |
	h4 gis fis2 |
	fis4 gis fis gis |
	h4 gis fis e |
	cis'1 |
	r1 |
	\bar "||" \break
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
%\skip 8
	e | h/dis | cis:m | a2 h2 |
	fis1:m | fis:m |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
	e1 | h/dis | cis:m | a |
	e1 | h/dis | cis:m | a |
	fis:m | e/gis | fis:m | e/gis |
	fis:m | e/gis | a | a |
}

chordsC = \chordmode {
	ces1
}

chordsD = \chordmode {
	ces1
}

%AKORDI STUPNJEVI

romanChordsA = \chordmode {
	c | g/h:8 | a | f2 g2 |
	d1 | d |
}

romanChordsB = \chordmode {
	c1 | g/h:8 | a | f | 
	c1 | g/h:8 | a | f | 
	d | c/e:8 | d | c/e:8 |
	d | c/e:8 | f | f |
}

romanChordsC = \chordmode {
	ces1
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sve što di -- še, sve što di -- še, sve što di -- še 
Ne -- ka sla -- vi te
}

lyricsBOne = \lyricmode {
Sla -- vim te u -- ju -- tro sla -- vim te na -- ve -- čer
U mla -- do -- sti i sta -- ro -- sti
Sla -- vim te smije -- \skip8 hom
I tu -- žan sla -- vim te
Pro -- sla -- vljam te -- be za -- u -- vijek

Kad spo -- zna -- li bi tvo -- ju moć
Sna -- gu lju -- bav bes -- kraj -- nu
Za -- u -- vijek bi te -- be sla -- vi -- li
}

lyricsBTwo = \lyricmode {
Sla -- ve -- te an -- đe -- li, ne -- be -- sa sla -- ve -- te
Sla -- ve te u -- vijek za -- u -- vijek
I ze -- mlja sla -- vi te
Sa svim stvo -- re -- nji -- ma
Sla -- ve te na -- ro -- di \skip8 svi
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Ja ću slavi -- ti, ja ću slavi -- ti
Svim što i -- mam te -- be sla -- vi -- ti
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
  \addlyrics { \lyricsFont \lyricsATwo }
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
  \addlyrics { \lyricsFont \lyricsBOne }
  \addlyrics { \lyricsFont \lyricsBTwo }
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
