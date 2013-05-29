\version "2.14.2"

\header {
title = "ZAUVIJEK" 
subtitle = "\"FOREVER\""
composer = "CHRIS TOMLIN" 
poet = "118 BPM | TEST" 
copyright = "\"Forever\" by Chris Tomlin Copyright © 2000" 
%album = "The Noise We Make"
}

%id3info
%=== TIT2 (Title/songname/content description): Forever
%=== TPE1 (Lead performer(s)/Soloist(s)): Chris Tomlin
%=== TALB (Album/Movie/Show title): The Noise We Make
%=== TCON (Content type): Christian Rock
%=== TCOM (Composer): Chris Tomlin
%=== TRCK (Track number/Position in set): 2
%=== TYER (Year): 2001
%=== TPE2 (Band/orchestra/accompaniment): Chris Tomlin
%=== TPUB (Publisher): Sparrow/Six Steps
%*** mp3 info
%MPEG1/layer III
%Bitrate: 192KBps
%Frequency: 44KHz

%groovesharkID=

\include "deutsch.ly"
\include "config_grand.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

phraseBreak = { \bar "" \break }
%phraseBreak = { }
originalScore = {
  \key a \major
  \partial 8
  \mark \default
  d'8 |  cis'8 e' e' e' ~ e'4 r8 e'8 | fis'8 e'4 e'8 ~ e'4 r8 \phraseBreak %phrase01
  e'8 | cis''4 cis''4 d''8 cis'' h' h' ~ |  h'16 a'8. ~ a'4 r2 | \phraseBreak %phrase02
  fis'8 a'8 a' a' ~ a' a' a' a' |  h'8. a'16 ~ a'8 a'8 ~ a'4 r8  \phraseBreak %phrase03
  d'8 | cis''4 cis''4 d''8 cis'' h' h' ~ |  h'16 a'8. ~ a'4 r4 \phraseBreak %phrase04
  \breathemoj
  a'4 | h'1 ~ | h'2 r4 cis''4 ~ |  cis''8 a'8 ~ a'2. ~ |  a'2. \phraseBreak %phrase05
  \breathemoj
  d''8 e'' ~ |  e'' cis''4 h'8 ~ h' h'4 h'8 ~ |  h' a'4. ~ a'4 \phraseBreak %phrase06
  cis''8 e'' ~ |  e'' cis''4 h'8 ~ h' cis''8 ~ cis''4 |  a'2 r4 \phraseBreak %phrase07
  cis''8 e'' ~ |  e'' cis''4 h'8 ~ h' h'4 h'8 ~ |  h' cis''4. ~ cis''4 \phraseBreak %phrase08
  h'8 h' ~ |  h' a' ~ a'2 h'8[ h'] ~ |  h' a' ~ a'2 \phraseBreak %phrase09
  h'8 h' ~ |  h' a' ~ a'2. |  r1 |  \phraseBreak %phrase10
  \bar "|."
}

originalChords = \chordmode {
  s8
  a1 | a | a | a |
  d | d | d | a |
  e | e | d/fis | d/fis |
  a1 | a | fis:m | fis:m |
  e | e | d | d1 |
  d1 | d |
}

englishLyricsA = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
Give thanks to the Lord Our God and King %text01
His love en -- du -- res for -- e -- ver %text02
For He is good, He is a -- bove all things %text03
His love en -- du -- res for -- e -- ver %text04
Sing praise, sing praise %text05

%Yeah
For -- e -- ver God is faith -- ful %text06
For -- e -- ver God is strong %text07
For -- e -- ver God is with us %text08
For -- e -- ver For -- e -- ver %text09
For -- e -- ver %text10
}
englishLyricsB = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
With a migh -- ty hand and out -- stretched arm %text01
His love en -- du -- res for -- e -- ver %text02
For the life that's been reborn _ _ _ _ %text03
His love en -- du -- res for -- e -- ver %text04
}
englishLyricsC = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
From the ri -- sing to the set -- ting sun %text01
His love en -- du -- res for -- e -- ver %text02
By the grace of God We will carry on _ %text03
His love en -- du -- res for -- e -- ver %text04
}

croatianLyricsA = \lyricmode {
Daj hva -- lu Bo -- gu i Kra -- lju svom %text01
Vje -- čna je nje -- go -- va lju -- bav %text02
On do -- bar je, on je u -- zvi -- šen _ %text03
Vje -- čna je nje -- go -- va lju -- bav %text04
Pje -- vaj hva -- lu %text05
Bog za -- u -- vijek je vje -- ran %text06
Bog za -- u -- vijek je jak %text07
On za -- u -- vijek je s_na -- ma %text08
I u -- vijek i u -- vijek %text09
Za -- u -- vijek %text10
}

croatianLyricsB = \lyricmode {
Mo -- ćnu ru -- ku on pru -- ža nam _ %text01
Vje -- čna je nje -- go -- va lju -- bav %text02
No -- vi ži -- vot nam da -- ru -- je _ _ %text03
Vje -- čna je nje -- go -- va lju -- bav %text04
}

croatianLyricsC = \lyricmode {
Od i -- zla -- ska sun -- ca do za -- "laska" %text01
Vje -- čna je nje -- go -- va lju -- bav %text02
Mi -- lo -- šću Bo -- žjom će -- mo ži -- vje -- ti %text03
Vje -- čna je nje -- go -- va lju -- bav %text04
}

slb = \lyricmode { "______" } %variable for empty syllable
emptyLyricsA = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
\slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb01
\slb \slb \slb \slb \slb \slb \slb \slb %\slb02
\slb \slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb03
\slb \slb \slb \slb \slb \slb \slb \slb %\slb04
\slb \slb \slb \slb %\slb05
\slb \slb \slb \slb \slb \slb \slb %\slb06
\slb \slb \slb \slb \slb \slb %\slb07
\slb \slb \slb \slb \slb \slb \slb %\slb08
\slb \slb \slb \slb \slb \slb %\slb09
\slb \slb \slb %\slb10
}

emptyLyricsB = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
\slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb01
\slb \slb \slb \slb \slb \slb \slb \slb %\slb02
\slb \slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb03
\slb \slb \slb \slb \slb \slb \slb \slb %\slb04
}

emptyLyricsC = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
\slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb01
\slb \slb \slb \slb \slb \slb \slb \slb %\slb02
\slb \slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb03
\slb \slb \slb \slb \slb \slb \slb \slb %\slb04
}

\score {
<<
  \new ChordNames { \romanChords \transpose a c { \originalChords } }
  \new ChordNames { \jazzChords \originalChords }
  \new Staff { \originalScore }
  \addlyrics { \englishLyricsA }
  \addlyrics { \croatianLyricsA }
  \addlyrics { \emptyLyricsA }
  \addlyrics { \englishLyricsB }
  \addlyrics { \croatianLyricsB }
  \addlyrics { \emptyLyricsB }
  \addlyrics { \englishLyricsC }
  \addlyrics { \croatianLyricsC }
  \addlyrics { \emptyLyricsC }
>>
}

