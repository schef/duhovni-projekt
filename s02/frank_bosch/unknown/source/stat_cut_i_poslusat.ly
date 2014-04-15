\version "2.18.0"

%\language "deutsch"

\header {
  title = "STAT ĆUT I POSLUŠAT"
  titlex = "NOVI ALBUM"
  composer = "FRANK BOSCH"
}

\include "s02_frbo.ily"

note = \relative c'' {
  \key e \major
  \repeat volta 2 {
  gis8 gis gis e fis4 dis8 e\( ~ |
  e8 cis ~ cis4\) r4 r8 cis8 |
  cis8 dis e fis e4 dis8 cis\( ~ |
  cis8 h ~ h4\) r4 r8 h8 |
  gis'8 gis gis e fis4 dis8 e ~ |
  e8 cis ~ cis4 r2 |
  cis8 dis e\( fis\) e4 dis8 fis ~ |
  }
  \alternative{
    {
      fis8 e ~ e4 r4 r8 h8 |
    }
    {
      fis'8\repeatTie e ~ e4 r4 \breathemoj gis8 a |
    }
  }
  
  h4 r4 cis2( |
  fis,2 gis4) r4 |
  h4 r4 cis2( |
  fis,2 gis4) gis8 a |
  h4 h cis2( |
  fis,2 gis4) r4 |
  h4 a4 gis a8 gis ~ |
  gis8 fis ~ fis4 r2 |
  \bar ".|:"
  
  \breathemoj
  \repeat volta 2 {
  e4 e e e |
  fis4 e8 fis ~ fis fis ~ fis4 |
  gis4 gis gis gis |
  a4 gis8 a ~ a a gis a |
  }
  \alternative{
    {
      h4 h2 r4 |
      h4( a2) gis8 gis ~ |
      gis8 fis ~ fis2. |
      r1 |
    }
    {
      h4 r4 r2 |
      a4 r4 gis4 fis8 fis ~ |
      fis8 e ~ e2. |
      r1 |
    }
  }
  \bar "|."
}

tekst = \lyricmode {
\set stanza = "1."
po -- ne -- kad me gnja -- vi, lju -- ti __
"" što mi do -- ma ka -- žu mo -- ji __
"" glas nji -- hov mi tvr -- do zvu -- či __
ne da -- ju mi sve što vo -- lim __ ""

\skip 8 \skip 8
tre -- bam stat' oooh __ čut'  oooh __ i po -- slu -- šat'
ooh __ stat ćut i po -- slu -- šat

bo -- že, te -- be, riječ ži -- vo -- ta __
"s to" -- bom že -- đat' ne -- će du -- ša
jer si i -- zvor ži -- va vo -- da __
}

tekstDva = \lyricmode {
%\set stanza = "2."
pro -- fe -- so -- ri sli -- čno zbo -- re __
"" od -- la -- zi im riječ u vje -- tar __
"" on -- da mo -- je mi -- sli ho -- de __
u svijet ču -- dnih ma -- šta, že -- "" "" "-" lja __ ""

\repeat unfold 16 {\skip 8}

"s to" -- bom že -- đat' ne -- će du -- ša __
te -- be pr -- vog ja ću slu -- šat'
tre -- bam _ _ _ _ _ _ stat čut i po -- slu -- šat __
}

tekstTri = \lyricmode {
\set stanza = "2."
je -- dni ka -- žu: i -- di lije -- vo __
"" dru -- gi ka -- žu: po -- đi de -- sno
"" ši -- ro -- kom za -- plo -- vi rije -- kom
ne -- moj ni -- kad u -- skom ce -- stom pa
}

tekstCetiri = \lyricmode {
ko -- ji on -- da slije -- dit' put __ _
i či -- ji on -- da slu -- šat' glas __ _
da ja ne skre -- nem bi -- lo ku -- da __
od -- go -- vor __ _ tre -- bam zna -- "" "" "-" ti __
}

akordi = \chordmode {
  e2 h | cis1:m | a | h |
  e2 h | cis1:m | a2 h | e1 | e |
  e2 a | h e | e a | h e | e a |
  h2 cis:m | a1 | h | cis:m | h |
  e1 | a | e | cis:m | h | h |
  cis:m | h | e | e |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    \addlyrics { \tekstTri }
        \addlyrics { \tekstCetiri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 4 = 122 }
}

%intro Ex2 
%kitica refren kitica collision

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
