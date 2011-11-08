 "2.14.2"

#(define naslov "OBASJAJ NAS" )
#(define autor "ALBERT FREY" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "\"Gnade und Wahrheit\" von Albert Frey, D&D Medien 2001 ©" )

#(define tonalitet "g" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

%NOTE
scoreA = \relative c' {
	\key g \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") A }
	%triola = \times 2/3
	%\override Staff.TimeSignature #'style = #'()
	%\partial 4
	%\repeat volta 2 {
	%}
	g'8 g g g ~ g g fis fis ~ |
	fis8 e4. r2 |
	d8 d d d ~ d e4 d8 ~ |
	d2 r4 r8 h8 |
	g'8 g g g ~ g fis4 fis8 ~ |
	fis8 e4. r2 |
	d8 d d d ~ d e4 d8 ~ |
	d2 r4 r8 d8 |
	c'8 c c c ~ c h4 h8 ~ |
	h8 a4. r2 |
	g8 g g g ~ g h4 h8 ~ |
	h2 r4 r8 g8 |
	c8 c c c ~ c h h h ~ |
	h8 a4. r2 |
	g8 g g g ~ g h4 h8 ~ |
	h2. r4 |
	%\alternative {
	%prima
	%	{ }
	%sekunda
	%	{\set Timing.measurePosition = #(ly:make-moment -3 4) }
	%}
	\bar "||" \break
}

scoreB = \relative c' {
	\key g \major
	\mark \markup { \box \override #'(font-name . "JohnSans Medium Pro") B }
	\set Score.currentBarNumber = #17
	%\partial 4
	h'4\( a8\) a8 ~ a4 d,4 |
	h'4\( a8\) a ~ a4 r4 |
	a4\( g8\) g ~ g4 d4 |
	a'4\( g8\) g ~ g4 r4 |
	h4\( a8\) a ~ a4 d,4 |
	h'4\( a8\) a ~ a4 r8 h8 |
	c4 c8 c ~ c h4 h8 ~ |
	h2. r4 |
	h4\( a8\) a ~ a4 d,4 |
	h'4\( a8\) a ~ a4 r4 |
	a4\( g8\) g ~ g4 d4 |
	a'4\( g8\) g ~ g4 r4 |
	h4\( a8\) a ~ a4 d,4 |
	h'4\( a8\) a ~ a4 g |
	g1 |
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
%\skip 8
	e1:m | c1 | g1 | d1 |
	e1:m | c | g | d |
	a1:min7 | d | c | g |
	a1:min7 | d | c | h |
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
	a1:m7 | d2:sus4 d2 | g1 | e:m7 |
	a1:m7 | d2:sus4 d2 | dis1:dim | e:m |
	a1:m7 | d2:sus4 d2 | g1 | e:m7 |
	a1:m7 | d2:sus4 d2 | g1 | g1 |
}

chordsC = \chordmode {
	ces1
}

chordsD = \chordmode {
	ces1
}

%AKORDI STUPNJEVI

romanChordsA = \chordmode {
	a1 | f1 | c1 | g1 | 
	a1 | f | c | g |
	d1:7 | g | f | c |
	d1:7 | g | f | e:8 |
}

romanChordsB = \chordmode {
	d1:7 | g2:sus4 g2 | c1 | a:7 |
	d1:7 | g2:sus4 g2 | gis1:dim | a |
	d1:7 | g2:sus4 g2 | c1 | a:7 |
	d1:7 | g2:sus4 g2 | c1 | c1 |
}

romanChordsC = \chordmode {
	ces1
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
I -- sti -- ni gle -- dam u o -- či,
sto -- jim u svje -- tlu tvom.
Zbog mi -- lo -- sti tvo -- je mo -- gu
pri -- mi -- ti ži -- vot nov.
Za -- cje -- lju -- ješ mo -- je ra -- ne,
znaš mo -- je sla -- bo -- sti.
Uz te -- be se vi -- še ne bo -- jim,
pje -- vam pun ra -- do -- sti.
}

lyricsB = \lyricmode {
I -- \skip8 su -- se, svije -- \skip8 tli mi -- \skip8 lo -- šću svo --  \skip8 jom.
I -- \skip8 su -- se, do -- \skip8 đi, ra -- svije -- tli ta -- mu svu.
Sr -- \skip8 ca nam mije -- \skip8 njaj mi -- \skip8 lo -- šću svo -- \skip8 jom.
I -- \skip8 su -- se, o -- \skip8 ba -- sjaj nas!
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
%Wir schauen der Wahrheit ins Auge, stellen uns in dein Licht. 
%Wir halten dort aus durch Gnade, denn du verdammst uns nicht. 
%Du kennst unsre toten Winkel, siehst unsern blinden Fleck, 
%berührst unsre wunden Punkte, nimmst unsre Ängste weg. 
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
%Jesus, dein Licht scheint voll Gnade und Wahrheit. 
%Jesus, dein Licht scheint in unsre Dunkelheit. 
%Jesus, durchdring uns mit Gnade und Wahrheit. 
%Jesus, komm bring uns ins Licht. 
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
