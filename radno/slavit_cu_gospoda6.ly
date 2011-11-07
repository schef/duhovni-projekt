\version "2.14.2"

#(define naslov "SLAVIT ĆU GOSPODA" )
#(define autor "MIRIAM WEBSTER" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "\"Made Me Glad\" by Miriam Webster Copyright © 2001 Hillsong Publishing" )

#(define tonalitet "b" )

\include "deutsch.ly"
\include "config.ly"
\include "zigZag.ly"
\include "jazzChords.ly"
\include "romanChords.ly"

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
	%\partial 4
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
	s1
	b1 | c:m | es | f |
	b | b/d | es | f |
	b | b |
}

chordsC = \chordmode {
	ces1
}

chordsD = \chordmode {
	ces1
}

%AKORDI STUPNJEVI

romanChordsA = \chordmode {
	c2/f f2 | c2/f f | g2/c c | g2/c c |
	c2/f f2 | c2/f f | g2/c c | g2/c c | 
	c2/f f2 | c2/f f | g2/c c | g2/c c | 
	c2/f f2 | c2/f f | g2/c c | g2/c c |
	f1 | f1 | d1 | g1 | 
}

romanChordsB = \chordmode {
	s1
	c1 | d | f | g | 
	c | c/e:8 | f | g | 
	c | c |
}

romanChordsC = \chordmode {
	ces1
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
