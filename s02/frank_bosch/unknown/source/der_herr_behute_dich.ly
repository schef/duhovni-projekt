\version "2.18.0"

%\language "deutsch"

\header {
  title = "DER HERR BEHÜTE DICH"
  titlex = "NOVI ALBUM"
  composer = "FRANK BOSCH"
}

\include "s02_frbo.ily"

note = \relative c' {
  \key c \major
  \partial 8
  g8 |
  c4. c8 d c d g, |
  e'4 e8 e f e f g |
  g8 e ~ e4 r4 d8 c16 c ~ |
  c2 r4 r8 g8 |
  c4. c8 d( c) d g, |
  e'4 e8 e f( e) f g16 g |
  g8( e4.) r4 r8 d8 |
  c2 r4 r8
  \breathemoj
  
  g'8 |
  c4. c8 h8 a g e |
  a4 a a8 g4 d16 e |
  f8 f4 e16 f g4( e) |
  d2 r4 r8 d8 |
  c4. c'8 h8 a g e |
  c4 c8 a' a8 g4 d16( e) |
  f8 f4 f16 g e4 d8( c) |
  c2 r4 r8
  \bar "|."
}

tekst = \lyricmode {
%\set stanza = "1."
Der HERR be -- hü -- tet dich;
der HERR ist dein Scha -- tten ü -- ber dei -- ner __ rech -- ten Hand, __
dass dich des Ta -- ges die So -- nne nicht ste -- che
noch der Mond des Nachts.

Der HERR be -- hü -- te dich vor a -- llem Ü -- bel,
er be -- hü -- te dei -- ne See -- le.
Der HERR be -- hü -- te dei -- nen Aus -- gang und Ein -- gang
von nun an bis in E -- wig -- keit!
}

tekstDva = \lyricmode {
%\repeat unfold 45 {\skip 8}

}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  \skip 8
  c2 g/h | c/e f | c/g g | c g |
  c2 g/h | c/e f | c/g g | c g/h |
  a2:m g | f c/e | d:m f | g gis:dim |
  a2:m g | f c/e | d4:m f g2 | c2 c4 c8

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
  \midi { \tempo 4 = 74 }
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
