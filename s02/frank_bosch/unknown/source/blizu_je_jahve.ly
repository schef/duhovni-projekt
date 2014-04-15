\version "2.18.0"

%\language "deutsch"

\header {
  title = "BLIZU JE JAHVE"
  titlex = "NOVI ALBUM"
  composer = "FRANK BOSCH"
}

\include "s02_frbo.ily"

note = \relative c'' {
  \key d \major
  \time 6/8
  h8 c d e fis g |
  a8 h a h4. |
  h8 a g fis e d |
  e8 d c h4. |
  h8 a g fis e d |
  c16 e d c h a h4. |
  \breathemoj
  
  d'8 cis h cis4 a8 |
  h8( a) g fis4. |
  g8 fis e fis g fis |
  fis8 e4 r4 a8 |
  e8 fis e e d cis |
  cis8 h4 r4. |
  \breathemoj
  
  e4. ~ e8 d cis |
  cis8 h4 r8
  \breathemoj
  
  h8 cis |
  d8 d d d4 d8 |
  e4 fis8 e8 h8\( cis\) |
  d8\( d d\) cis4 cis8 |
  cis8 h4 r8 h8 cis |
  d8 d d d4 d8 |
  e4 fis8 e8 h\( cis\) |
  d4. e4 g8 |
  g8 fis4 r4. |
  \bar "|."
}

tekst = \lyricmode {
%\set stanza = "1."
\repeat unfold 33 {\skip 8}
Bli -- zu je Ja -- hve o -- ni -- ma ko -- ji su slo -- mlje -- na sr -- ca,
a klo -- nu -- le du -- še spa -- ša -- va. Ja -- hve je bli -- zu

_ _ Pra -- ve -- dni -- ci za -- zi -- va -- ju, i __ _ Ja -- _ _ __ hve ih ču -- je
_ _ i -- zba -- vlja ih iz svih tje -- sko -- ba. __ _ Ja -- hve je bli -- zu.
}

tekstDva = \lyricmode {
\repeat unfold 63 {\skip 8}
Mno -- ge ne -- vo -- lje i -- ma pra -- ve -- dnik a -- li Bog ga od svih i -- zba -- vlja
Mno -- ge ne -- vo -- lje i -- ma pra -- ve -- dnik a -- li Ja -- hve je bli -- zu
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  h8*6:m | h:m | h:m | h:m | h:m |
  h8*6:m | h8*3:m fis:m | g d | e:m h:m | a8*6 |
  e8*6:m | h:m | e:m | h:m | h:m |
  e:m | g8*3 a | h8*6:m | h:m | e:m | g8*3 a | d8*6 |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
%    \addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 8 = 174 }
}

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
