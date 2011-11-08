\version "2.14.2"

#(define naslov "ZAUVIJEK" )
#(define autor "CHRIS TOMLIN" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "\"Forever\" by Chris Tomlin Copyright © 2000" )

#(define tonalitet "f" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

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
	\skip 1
	f1 | f | d:m | d:m |
	c | c | b | b2. |
	b1 | b | b |
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
	c1 | c | c | c |
	f | f | f | c |
 	g | g | f/a:8 | f2./a:8 f8/a:8 | 
	f1/a:8 | g | g | f/a:8 | f | 
}

romanChordsB = \chordmode {
	\skip 1
	c1 | c | a | a | 
	g | g | f | f2. | 
	f1 | f | f |
}

romanChordsC = \chordmode {
	ces1
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
  \addlyrics { \lyricsFont \lyricsAThree }
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
