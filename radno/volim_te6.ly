\version "2.14.2"

#(define naslov "VOLIM TE" )
#(define autor "MARIJA LACKOVIĆ" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "Copyright Information ©" )

#(define tonalitet "a" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

%NOTE
scoreA = \relative c' {
	\key a \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	r4 e'8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 cis2 |
	h1 |
	r4 e8 e e8 e4 fis8 ~ |
	fis8 e4 d8 ~ d cis4. |
	r4 e8 e e e4 e8 ~ |
	e8 d4 cis8 ~ cis4 h |
	d2 cis2 |
	a1 |
	d2 e2 |
	e2. \wstem #'(-4 . 4) r4 |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "||" \break
}

scoreB = \relative c' {
	\key a \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #16
	%\partial 4
	r2 r4 \wstem #'(-2 . 2) gis''8 a ~ |
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 gis2 |
	e1 |
	fis2 a2 |
	gis2. gis8 a ~|
	a4 a8 a a a4 a8 ~ |
	a8 gis4 fis8 ~ fis e4. |
	r4 gis8 gis gis gis4 gis8 ~ |
	gis8 a4 h8 ~ h gis4. |
	a2 h |
	a1 |
	fis2 a |
	gis1 |	
	\bar "||" \break
}

scoreC = \relative c' {
	\key a \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") C }
	\set Score.currentBarNumber = #32
	%\partial 2
	a''2 gis |
	e1 |
	a2 gis |
	e1 |
	a2 gis |
	e1 |
	fis2 a |
	gis1	
	\bar ":|"
}

%AKORDI
chordsA = \chordmode {
%\skip 8
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e |
	a1 | a | e1/gis | e1/gis |
	fis1:m | d | h:m | e1 |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
	s1 
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
	a1 | a | e1 | e |
	fis1:m | d | h:m | e |
}

chordsC = \chordmode {
	a1 | a | e/gis | e/gis |
	fis1:m | d | h:m | e
}

chordsD = \chordmode {
	ces1
}

%AKORDI STUPNJEVI

romanChordsA = \chordmode {
	c1 | c | g1/h:8 | g1/h:8 | 
	a1 | f | d | g |
	c1 | c | g1/h:8 | g1/h:8 | 
	a1 | f | d | g |
}

romanChordsB = \chordmode {
	s1
	c1 | c | g1 | g | 
	a1 | f | d | g | 
	c1 | c | g1 | g |
	a1 | f | d | g | 
	
}

romanChordsC = \chordmode {
	c1 | c | g1/h:8 | g1/h:8 | 
	a1 | f | d | g |
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Sla -- va, sla -- va te -- bi, O -- če
Stvo -- ri -- te -- lju sve -- mi -- ra i ze -- mlje sve, ze -- mlje sve
Sla -- va, sla -- va te -- bi, O -- če
Što to -- li -- ko lju -- bi -- o si cije -- li svijet, cije -- li svijet
}

lyricsB = \lyricmode {
Pje -- vam, u vi -- si -- nu pru -- žam ru -- ke
Po -- di -- žem svoj glas da ču -- ju svi da si naj -- ve -- ći
Ple -- šem, jer me ra -- dost i -- spu -- nja -- va
Sr -- ce vje -- ru -- je i je -- zik pri -- zna -- je: Vo -- lim te
}

lyricsC = \lyricmode {
Vo -- lim -- te
Vo -- lim -- te
Vo -- lim -- te
Vo -- lim -- te
}

lyricsATwo = \lyricmode {
Sla -- va, sla -- va te -- bi, Kri -- ste
Za sve što u -- či -- ni -- o si za me -- ne, za me -- ne
Sla -- va, sla -- va te -- bi, Kri -- ste
Što u te -- bi i -- mam ži -- vot, i -- mam sve, i -- mam sve
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
  \addlyrics { \lyricsFont \lyricsB }
  >>
  \layout {\context {\Staff \remove "Time_signature_engraver" }}
  %\midi {}
}

%DIO C
\score {
  <<
  \new ChordNames { \romanMajorChords
                    \romanChordsC
                  }
  \new ChordNames { \standardChords
                    \chordsC
                  }
  \new Voice { \voiceFont
               %\transpose d h, 
               \scoreC
             }
  \addlyrics { \lyricsFont \lyricsC }
  >>
  \layout {\context {\Staff \remove "Time_signature_engraver" }}
  %\midi {}
}

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
