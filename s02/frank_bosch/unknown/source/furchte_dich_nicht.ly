\version "2.18.0"

%\language "deutsch"

\header {
  title = "FÜRCHTE DICH NICHT"
  titlex = "NOVI ALBUM"
  composer = "FRANK BOSCH"
}

\include "s02_frbo.ily"

note = \relative c' {
  \key d \major
  \time 3/4
  
  d4 d d8 e |
  d2 d8 e |
  fis4 e4. d8 |
  d2. |
  e4 e e8( fis) |
  e2 d8 e |
  fis4 e4. d8 |
  e2. |
  d4 d d8 e |
  d2 d8 e |
  fis4 e4. d8 |
  d2 e8 fis |
  g4 g g |
  fis4 g fis |
  e2. |
  r2. |
  
  \breathemoj a4 g fis |
  e2. |
  d4 e fis |
  e2. |
  a4( g) fis |
  e2 r8 d8 |
  h'4 a g |
  a2 r8 cis8 |
  d4( cis) h |
  a2. |
  r2. |
  r2 r8 cis8 |
  d4 cis h |
  a2. |
  r2. |
  r2 r8 a8 |
  a4( g) fis |
  e2 d8 d |
  h'4( a g) |
  fis2. |
  fis4 g fis |
  e2 r8 d8 |
  d2. |
  r2. |
  \bar "|"
}

tekst = \lyricmode {
\set stanza = "1."

}

tekstDva = \lyricmode {
%\repeat unfold 45 {\skip 8}

}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  d2. | d:maj7 | g | d | e:m | e:m |
  g2. | a | d | d:maj7 | g | d |
  e2.:m | g | a:sus4 | a | d | a | g |
  a2. | d | a | g | a | g | 
  fis2.:m | g | a | g | fis:m | g | a |
  d2. | a | g | d | g | a | d | d |
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
  \midi { \tempo 4 = 111 }
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
