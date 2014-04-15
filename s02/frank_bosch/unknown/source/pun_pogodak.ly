\version "2.18.0"

%\language "deutsch"

\header {
  title = "PUN POGODAK"
  titlex = "NOVI ALBUM"
  composer = "FRANK BOSCH"
}

\include "s02_frbo.ily"

note = \relative c' {
  \key e \major
  \partial 4
  e4 |
  e4 e e cis8 e ~ |
  e2 r4 e4 |
  fis4 fis fis e8 fis ~ |
  fis2 r2 |
  gis4 gis gis gis |
  fis4 fis gis fis8 e ~ |
  e1 |
  r1 |
  e4 e e cis8 e ~ |
  e2 r2 |
  fis4 fis fis e8 fis ~ |
  fis2 r4 fis4 |
  gis4 gis gis gis |
  fis4 fis gis fis8 e ~ |
  e4 e fis gis |
  e2 \breathemoj
  
  gis8 h ~ h4 |
  h4 r4 cis4. e,8 ~ |
  e2 r8 gis4.\( |
  gis4\) fis fis e8 fis ~ |
  fis2 gis8 h ~ h4  |
  h4 r4 cis4. e,8 ~ |
  e2 r8 gis4. |
  gis4 fis fis e8 fis ~ |
  fis2 r2 |
  \breathemoj
  
  \repeat volta 2 {
    gis4 h h h8 cis ~ |
    cis2 a4 gis |
    fis4 fis h8 a4 a8 ~ |
    a4 gis gis2 |
  }
  \alternative{
    {
      gis4 gis fis gis |
      a4 a a gis8 fis ~ |
      fis1 |
      r1 |
    }
    {
      gis4 gis fis gis |
      a4 a gis fis8 e ~ |
      e1 |
      r1 |
      \bar "|."
    }
  }
}

tekst = \lyricmode {
Pun po -- go -- dak si ti, __ pun po -- go -- dak sam ja __
Bo -- žji pu -- ni po -- go -- dak smo mi. __
Nas je stvo -- ri -- o __ ta -- ko ču -- de -- sno, __
Iz Bi -- bli -- je to zna -- mo i ve -- se -- li -- mo se svi

\set stanza = "1."
Za -- to __ pet mi daj __ i no -- gom lu -- pi -- mo __ ""
_ Pet mi daj __ i Bo -- ga hva -- li -- mo: __

Bo -- že hva -- la ti, __ što sam stvo -- ren ta -- ko ču -- de -- sno 
što su tvo -- ja dje -- la pre -- di -- vna. __
što su tvo -- ja dje -- la pre -- di -- vna. __
}

tekstDva = \lyricmode {
\repeat unfold 45 {\skip 8}
\set stanza = "2."
Za -- to __ pet mi daj __ i gla -- vom tre -- si -- mo __ "" 
_ Pet mi daj __ i Bo -- ga hva -- li -- mo: __
}

tekstTri = \lyricmode {
\repeat unfold 45 {\skip 8}
\set stanza = "3."
Ru -- ke __ di -- gni -- mo __ i __ _ po -- sko -- či -- mo. __
Ru -- ke __ di -- gni -- mo __ i Bo -- ga hva -- li -- mo: __
}

akordi = \chordmode {
\skip 4
e1 | e | fis:m | fis:m |
gis1:m | fis:m | e | e | e | e |
fis1:m | fis:m | gis:m | fis:m |
e1 | e | gis:m | cis:m | a | h | gis:m |
cis1:m | a | h |

e1 | a | h | e |
cis1:m | a | h | h |
cis1:m | a2 h | e1 | e |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    \addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 4 = 180 }
}

%intro E x4
%kitica bridge refren
%kitica bridge refren
%kitica bridge refren
%refren
%outro E x4

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
