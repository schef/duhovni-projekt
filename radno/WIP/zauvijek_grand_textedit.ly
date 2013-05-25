\version "2.14.2"

\header {
title = "ZAUVIJEK" 
subtitle = "\"FOREVER\""
composer = "CHRIS TOMLIN" 
poet = "TEST | TEST" 
copyright = "\"Forever\" by Chris Tomlin Copyright © 2000" 
}

\include "deutsch.ly"
\include "config_grand.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

%NOTE
scoreA = \relative c' {
  \key f \major
  \partial 4
  \mark \default
  r8 c'8 | c8 c4 c8 ~ c c4 c8 | d4 c8 c ~ c2 | %phrase01
  a'4 a8 a b a g g ~ | g8 f ~ f2 r8 %phrase02
  c8 | d8 f4 f8 ~ f4 d8 f8 | g4 a8 f ~ f2 | %phrase03
  a4 a8 a b a g g ~ | g8 f ~ f2 %phrase04
  \breathemoj
  f4 ~ | f4 g2. ~ | g2.  a4 ~ | a4 f2. ~ | f2. %phrase05
  \breathemoj
  a8 c ~ | c8 a4 g8 ~ g g4 g8 ~ | g8 a4. ~ a4 %phrase06
  a8 c ~ | c8 a4 g8 ~ g a4 f8 ~ | f2. %phrase07
  a8 c8 ~ | c8 a4 g8 ~ g g4 g8 ~ | g8 a4. ~ a4 %phrase08
  g8 g ~ | g8 f8 ~ f2 g8[ g] ~ | g8 f8 ~ f2 %phrase09
  g8 g ~ | g8 f ~ f2. | r1 | %phrase10
  \bar "|." \break
}

%AKORDI
chordsA = \chordmode {
  \skip 4
  f1 | f | f | f |
  b | b | b | f |
  c | c | b/d | b/d |
  f1 | f | d:m | d:m |
  c | c | b | b1 |
  b1 | b |
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
  Daj hva -- lu Bo -- gu i Kra -- lju svom %text01
  Vje -- čna je nje -- go -- va lju -- bav %text02
  On do -- bar je, on je u -- zvi -- šen %text03
  Vje -- čna je nje -- go -- va lju -- bav %text04
  Pje -- vaj hva -- lu %text05
}

lyricsB = \lyricmode {
  Bog za -- u -- vijek je vje -- ran %text06
  Bog za -- u -- vijek je jak %text07
  On za -- u -- vijek je s_na -- ma %text08
  I u -- vijek i u -- vijek %text09
  Za -- u -- vijek %text10
}

lyricsATwo = \lyricmode {
  Mo -- ćnu ru -- ku on pru -- ža nam \skip8 %text01
  Vje -- čna je nje -- go -- va lju -- bav %text02
  No -- vi ži -- vot nam da -- ru -- je \skip8 %text03
  Vje -- čna je nje -- go -- va lju -- bav %text04
}

lyricsAThree = \lyricmode {
  Od i -- zla -- ska sun -- ca do za -- "la -- ska" %text01
  Vje -- čna je nje -- go -- va lju -- bav %text02
  Mi -- lo -- šću Bo -- žjom će -- mo ži -- "vje -- ti" %text03
  Vje -- čna je nje -- go -- va lju -- bav %text04
}

\score {
<<
  \new ChordNames { \romanChords \transpose f c { \chordsA } }
  \new ChordNames { \jazzChords \chordsA }
  \new Staff { \scoreA }
  \addlyrics { \lyricsAOne \lyricsB }
  \addlyrics { \lyricsATwo }
  \addlyrics { \lyricsAThree }
>>
}

