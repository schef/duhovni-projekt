\version "2.18.0"

%\language "deutsch"

\header {
  title = "NE DOPUSTI DA"
  titlex = "NOVI ALBUM"
  composer = "FRANK BOSCH"
}

\include "s02_frbo.ily"

noteprvi = \relative c' {
  \key f \major
  \voiceOne
  %\override Voice.Rest #'staff-position = #0
  d4 d d d |
  d4 d e c |
  d1 ~ |
  d1 |
  d4 d d d |
  d4 d e c |
  d1 ~ |
  d4
  \oneVoice
  r4 r8 \breathemoj
  
  d8( e f |
  g2 ~ g8) e( f g |
  a2.) a4 |
  g2 f4 g |
  b4. a8 r8 d,8( e f |
  g2 ~ g8) c,8( c' b |
  a1) |
  \breathemoj
  g2 f4 e |
  e4 d2. |
  \bar "||"

  \breathemoj
  f8 f f f ~ f f f f ~ |
  f8 e ~ e2 r8 e8 |
  g8 g g4 r2 |
  f4 f8 e ~ e2 |
  f8 f f f f f4 f8 ~ |
  f8 e d e ~ e4 r4 |
  g8 g g4 g8 a g( f ~ |
  f2) r4 r8 \override NoteHead.style = #'cross f8 |
  f8 f r4 r2 |
  \revert NoteHead.style
  r1 |
  \bar "|."

}

notedrugi = \relative c' {
  \key f \major
  \voiceTwo
  s1 |
  s1 |
  d4 d d d | 
  d4 d e c |
  d1 ~ |
  d1 |
  d4 d d d d
}

tekst = \lyricmode {
  Ne do -- pu -- sti da te svla -- da zlo, __ Ne do -- pu -- sti da te svla -- da zlo. __

  Oooh __ oooh __ već zlo svla -- daj do -- brim!
  Oooh __ oooh __ zlo svla -- daj do -- brim!

  Bu -- di -- te trije -- zni i bdij -- te: __ Vaš pro -- ti -- vnik, đa -- va -- o, __
  o -- bi -- la -- zi ka -- o ri -- ču -- ći lav, __ tra -- že -- ći ko -- ga da __ pro -- žde -- re.

}

tekstDva = \lyricmode {
  Ne do -- pu -- sti da te svla -- da zlo, __ Ne do -- pu -- sti da!
}

akordi = \chordmode {
  d1:m | b2 c2 | d1:m | b2 c2 |
  d1:m | b2 c2 | d1:m | d1:m |

  g2:m c | f d:m | g:m c |
  f2 d:m | g:m c | f d:m |
  g2:m a | d1:m |

  d1:m | c | g:m | b2 a |
  d1:m | c | g:m | b2 c |
  d1:m | d1:m |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { 
      <<

        \new Voice = "first"
        \noteprvi
        \new Voice = "second"
        \notedrugi
      >>
    }
    \new Lyrics {
      \lyricsto "first" {
        \tekst
      }
    }

    \new Lyrics {
      \lyricsto "second" {
        \tekstDva
      }
    }
%    \addlyrics { \tekst }
%    \addlyrics { \tekstDva }

  >>
  \layout {}
  \midi { \tempo 4 = 120 }
}

%kitica refren kitica refren bridge kitica refren refren outro x3

%\markup {
%\vspace #2
%\smaller \italic Leadsheet: \hspace #2
%		\huge {
%		\rounded-box {
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(0 . 2.05) 3 \teeny \italic bridge }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { 1 \italic \teeny chorus \bold \tiny ×2 } }
%		}
%	}
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}
