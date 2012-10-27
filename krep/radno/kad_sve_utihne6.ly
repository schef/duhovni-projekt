\version "2.14.2"

#(define naslov "KAD SVE UTIHNE" )
#(define autor "MATT REDMAN" )
#(define mjera "TEST | TEST" )

#(define brojPjesme "345" )
#(define brojStraniceLijevo "3" )
#(define brojStraniceDesno "4" )
#(define copyright "The Heart of Worship” by Matt Redman Copyright © 1997 Thankyou Music" )

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
	%\partial 4
	%\repeat volta 2 {
	%}
	r4. a'16 a16 a8 d,4 e8 ~ |
	e4. e8 fis8 e e d16 d |
	r4. a'16 a16 a8 d,4 e8 ~ |
	e1 |
	r4. a16 a16 a8 d,4 e8 ~ |
	e2 fis8 e e d16 d |
	r4. a'16 a16 a8 d,4 e8 ~ |
	e1 |
	r8 g8 g g fis e d e ~ |
	e4. e16 d fis8 e d h |
	r8 g'8 g g fis e d e ~ |
	e1 |
	r8 g8 g g fis e d e ~ |
	e4. e16 d fis8 e d h |
	r8 g'8 g g a fis h e, ~ |
	e1 |	
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
	\set Score.currentBarNumber = #17
	%\partial 4
	r8 a'8 a a a d, d h' ~ |
	h8 a4 fis8 ~ fis8 e4 d8 |
	fis8 fis g fis ~ fis4 r4 |
	fis8[ fis] g fis4 e8 d8[ d] |
	r8 a'8 a a a d, d h' ~ |
	h8 a4 fis8 ~ fis8 e4 d8 |
	fis8 fis g fis ~ fis4 r4 |
	fis8[ fis] g fis4 e8 d8[ d] |
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
Kad sve u -- ti -- hne
I gla -- zba pre -- sta -- ne
Te -- bi do -- la -- zim
Že -- lim do -- nije -- ti
Ne -- što po -- se -- bno
Što te ra -- du -- je

Vi -- še od sa -- me pje -- sme
Ne -- što mno -- go du -- blje
Do -- no -- sim te -- bi na dar
Pro -- ni -- češ du -- šu mo -- ju
Vi -- diš sr -- ce mo -- je
Ku -- ca li o -- no za tebe
}

lyricsB = \lyricmode {
Do -- la -- zim po -- no -- vo bli -- že te -- bi
Jer va -- žan si ti
Va -- žan si ti I -- su -- se
O -- pro -- sti Go -- spo -- de za sve dru -- go
Kada va -- žan si ti
Va -- žan si ti I -- su -- se
}

lyricsC = \lyricmode {
"test bridge"
}

lyricsATwo = \lyricmode {
Vje -- čni Kra -- lju moj
Ne -- i -- zre -- ci -- vo
Si vrije -- dan ti
Sla -- bi bez -- vrije -- dni
Se -- be pre -- da -- jem
Da te pro -- sla -- vim

Vi -- še od sa -- me pje -- sme
Ne -- što mno -- go du -- blje
Do -- no -- sim te -- bi na dar
Pro -- ni -- češ du -- šu mo -- ju
Vi -- diš sr -- ce mo -- je
Ku -- ca li o -- no za tebe
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
%When the music fades
%All is stripped away
%And I simply come
%Longing just to bring
%Something that's of worth
%That will bless your heart
%
%I'll bring You more than a song
%For a song in itself
%Is not what You have required
%You search much deeper within
%Through the way things appear
%You're looking into my heart
%	}
%}
%
%\markup { \lyricsExtFont)
%	\wordwrap {
%King of endless worth
%No one could express
%How much you deserve
%Though I'm weak and poor
%All I have is yours
%Every single breath
%	}
%}
%
%\markup { \lyricsExtFont)
%	\wordwrap {
%	\abox B
%I'm coming back to the heart of worhip
%And it's all about You
%It's all about You, Jesus
%I'm sorry, Lord, for the thing I've made it
%When it's all about You
%It's all about You, Jesus
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
