\version "2.16.0"

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

\header {
  title = "SVOJE BRIGE SAD ODLOŽI"
  subtitle = "\"LEGE DEINE SORGEN NIEDER\""
  composer = "SEFORA NELSON"
  poet= "115 BPM | BALADA"
  copyright = "\"Lege Deine Sorgen Nieder\" by Sefora Nelson, Copyright ©"
  %album = Wenn der Tag Kommt
}

\include "config_grand.ly"

%	%\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
%	%\override Score.RehersalMark #'break-align-anchor-alignment = #RIGHT
%	%\once \override Score.RehearsalMark #'Y-offset = #-1.5
%	%\once \override Score.RehearsalMark #'X-offset = #0.02

%phraseBreak = { \bar "" \break }
phraseBreak = { }

originalScore = \relative c' {
  \key d \major
  
  %kitica1
  \mark \default %verse
  \partial 4
  d16 e | fis8 d16 e ~ e8 cis16 d ~ d8 h16 ( a ~ a8 ) \phraseBreak %phrase01
  d16 e | fis8 d16 e ~ e8 cis16 h ~ h4 r8 \phraseBreak %phrase02
  d16 e | fis8 d16 e ~ e8 cis16 d ~ d fis8 e16 ~ e8. \phraseBreak %phrase03
  h16 | h8 d16 d ( e8 ) cis16 d ~ d8 r8 \phraseBreak %phrase04
  
  %refren
  \breathemoj
  d16 e fis a ~ | a8. fis16 ~ fis4 r8 r16 a,16 e'8 cis16 d ~ | d2 r4 \phraseBreak %phrase05
  d16 e fis a ~ | a8 fis16 e ~ e d d8 ~ d fis16 e ~ e8 d16 d ~ | d2 r4 \phraseBreak %phrase06
  d16 e fis a ~ | a8. fis16 ~ fis4 r8 r16 a,16 e'8 cis16 d ~ | d2 r4 \phraseBreak %phrase07
  d16 e fis a ~ | a8 fis16 e ~ e8 d16 d ~ d8 fis16 e ~ e8 d16 d ~ | d2 ~ d4 r8 \phraseBreak %phrase08
  \bar "|."
}

shiftedScore = { 
  \time 2/2
    \key d \major
    \mark \default \partial 4 d'8 e' |
    fis'4 d'8 e' ~ e'4 cis'8 d' ~ d'4 h8( a ~ a4) {  } d'8 e' |
    fis'4 d'8 e' ~ e'4 cis'8 h ~ h2 r4 {  } d'8 e' |
    fis'4 d'8 e' ~ e'4 cis'8 d' ~ d' fis'4 e'8 ~ e'4. {  } h8 |
    h4 d'8 d'( e'4) cis'8 d' ~ d'4 r {  } {

\breathemoj
    } d'8 e' fis' a' ~ |
    a'4. fis'8 ~ fis'2 r4 r8 a e'4 cis'8 d' ~ |
    d'1 r2 {  } d'8 e' fis' a' ~ |
    a'4 fis'8 e' ~ e' d' d'4 ~ d' fis'8 e' ~ e'4 d'8 d' ~ |
    d'1 r2 {  } d'8 e' fis' a' ~ |
    a'4. fis'8 ~ fis'2 r4 r8 a e'4 cis'8 d' ~ |
    d'1 r2 {  } d'8 e' fis' a' ~ |
    a'4 fis'8 e' ~ e'4 d'8 d' ~ d'4 fis'8 e' ~ e'4 d'8 d' ~ |
    d'1 ~ d'2 r4 {  } \bar "|."
   
  }

%	%\once \override ChordNames.ChordName #'X-offset = #1

tenor = {
  fis8 g8 a8 d'8 ~ | d'4. h8 ~ h2 | r4 r8 a8 a4 a8 h8 ~ | h1 |
  r2 fis8 g8 a8 d'8 ~ | d'4 h8 a8 ~ a8 a8 a4 ~ | a4 a8 a8 ~ a4 a8 a8 ~ | a1 |
  r2 fis8 g8 a8 d'8 ~ | d'4. h8 ~ h2 | r4 r8 cis'8 cis4 cis'8 d'8 ~ | d'1 |
  r2 fis8 g8 a8 d'8 ~ | d'4 h8 a8 ~ a4 a8 a8 ~ | a4 a8 a8 ~ a4 a8 a8 ~ | a1 | a2 r4 |
}

originalChords = \chordmode {
  s8
  d4 a/cis g2/h |
  d4 a/cis g2/h |
  d4 a/cis g/h a |
  g4 a d2 |
  g2 a2 |
  h2.:m d4/fis |
  g2 a |
  d1 |
  g2 a2 |
  h2.:m d4/fis |
  g2 a2 |
  d8*7
}


croatianLyricsA = \lyricmode {
  
  %verse 1
  \set stanza = #"1."
  Svo -- je bri -- ge sad o -- dlo -- ži, __
  na moj dlan ih sta -- vi sve.
  Tvo -- je o -- bja -- šnje -- nje ne tre -- bam
  jer već te po -- zna -- jem.
  
  %refrain
  
  Haj -- de o -- dlo -- ži sve na moj dlan.
  Do -- đi o -- dlo -- ži, sve pre -- pu -- sti na moj dlan.
  Haj -- de o -- dlo -- ži, pre -- pu -- sti sve,
  jer tvo -- me Bo -- gu ni -- šta ni -- je pre -- vi -- še. __
  
}

croatianLyricsB = \lyricmode {
  
  %verse 2
  
  \set stanza = #"2."
  Svo -- je stra -- ho -- ve o -- dlo -- ži, __
  sve što no -- ću mu -- či te.
  Sa -- da mir ti da -- jem po -- nov -- no,
  svoj mir ti da -- ru -- jem.
}

croatianLyricsC = \lyricmode {
  
  %verse 3
  
  \set stanza = #"3."
  Svo -- je grije -- he sad o -- dlo -- ži, __
  od -- mah pre -- daj i svoj sram.
  Vi -- še ne mo -- raš ih no -- si -- ti,
  jer za njih pla -- ćam sam.
}

croatianLyricsD = \lyricmode {
  
  %verse 4
  
  \set stanza = #"4."
  Svo -- je su -- mnje sad o -- dlo -- ži, __
  ni -- su ve -- će od me -- ne.
  Sad ti da -- jem na -- du po -- no -- vno
  i su -- mnja ne -- sta -- je.
}

englishLyricsA = \lyricmode {
  tekst %text01
  %text02
  %text03
  %text04
  %text05
  %text06
  %text07
  %text08
  %text09
  %text10
}

englishLyricsB = \lyricmode {
  tekst %text01
  %text02
  %text03
  %text04
  %text05
  %text06
  %text07
  %text08
  %text09
  %text10
}

%\score {
%	<<
%		\new ChordNames { \romanChords \transpose d c \shiftDurations #-1 #0 \originalChords }
%	\new ChordNames { \jazzChords \shiftDurations #-1 #0 \originalChords }
%	\new Voice \with {
%		\remove "Note_heads_engraver"
%			\consists "Completion_heads_engraver"
%			\remove "Rest_engraver"
%			\consists "Completion_rest_engraver"
%	}
%
%	\displayLilyMusic { \time 2/2 \shiftDurations #-1 #0 \originalScore }
%	%	\addlyrics { \englishLyricsA }
%	\addlyrics { \croatianLyricsA }
%	%	\addlyrics { \emptyLyricsA }
%	%	\addlyrics { \englishLyricsB }
%	\addlyrics { \croatianLyricsB }
%	\addlyrics { \croatianLyricsC }
%	\addlyrics { \croatianLyricsD }
%	%	\addlyrics { \emptyLyricsB }
%	>>
%}

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne \shiftedScore }
      %\new Voice = "altos" { \voiceTwo << \changePitch \originalScore \alt >> }
      %\new Voice = "altos" { \voiceTwo \alt }
    >>
    %        \new Lyrics \with { alignAboveContext = women } \lyricsto sopranos \englishLyrics
    \new Lyrics \with { alignBelowContext = women } \lyricsto sopranos \croatianLyricsA
    % we could remove the line about this with the line below, since we want
    % the alto lyrics to be below the alto Voice anyway.
    % \new Lyrics \lyricsto altos \altoWords
    
        \new Staff = men <<
          \clef bass
          %\new Voice = "tenors" { \voiceOne << \changePitch \originalScore \tenor >> }
        \new Voice = "tenors" { r4 \repeat unfold 7 r1 r2 \tenor }
    %      %\new Voice = "basses" { \voiceTwo << \changePitch \originalScore \tenor >> }
    %      \new Voice = "basses" { \key e \major \tenor }
  >>
  %\new Lyrics \with { alignAboveContext = men } \lyricsto tenors \rijeciBas
  %    \new Lyrics \with { alignBelowContext = men } \lyricsto basses \bassWords
  % again, we could replace the line above this with the line below.
  % \new Lyrics \lyricsto basses \bassWords
  >>
  \layout {
    \context {
      % a little smaller so lyrics
      % can be closer to the staff
      \Staff
      %\override RestCollision #'positioning-done = #merge-rests-on-positioning
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
  \midi {}
}