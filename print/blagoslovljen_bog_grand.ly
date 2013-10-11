\version "2.14.2"

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

%verified and audited by Stjepan Horvat, 100% transcribed
%date: Sat May 25 18:23:22 CEST 2013
%iskreno.hr quality confirmed

%id3info
%*** Tag information for Music/Matt Redman - Blessed Be Your Name.mp3
%=== TIT2 (Title/songname/content description): Blessed be Your Name
%=== TPUB (Publisher): Survivor/Chordant
%=== TCON (Content type): Religious
%=== POPM (Popularimeter): Windows Media Player 9 Series, counter=0 rating=255
%=== TRCK (Track number/Position in set): 2
%=== TYER (Year): 2002
%=== TALB (Album/Movie/Show title): Where Angels Fear to Tread
%=== TPE2 (Band/orchestra/accompaniment): Matt Redman
%=== TCOM (Composer): Beth Redman/Matt Redman
%=== TPE1 (Lead performer(s)/Soloist(s)): Matt Redman
%*** mp3 info
%MPEG1/layer III
%Bitrate: 128KBps
%Frequency: 44KHz

%groovesharkID: 35990787

\header {
  title = "BLAGOSLOVLJEN BOG"
  subtitle = "\"BLESSED BE YOUR NAME\""
  composer = "MATT I BETH REDMAN"
  poet= "115 BPM | ROCK"
  copyright = "\"Blessed Be Your Name\" by Matt and Beth Redman, Copyright ©"
  %album = "Where Angels Fear to Tread"
  tagline = "Blagoslovljen Bog (2/2)"
}

\include "config_grand.ly"
%phraseBreak = { \bar "" \break }
phraseBreak = { }

originalScore = {
  \key h \major
  
  \mark \default %verse
  r4 r8 dis' ~ dis' fis'4 e'8 ~ | e' fis'4 fis'8 ~ fis'4. \phraseBreak %phrase01
  dis'16 cis' | dis'4. dis'8 ~ dis' fis'4 e'8 ~ | e' fis'4 fis'8 ~ fis'4. \phraseBreak %phrase02
  dis'16 cis' | dis'4. dis'8 ~ dis' fis'4 e'8 ~ | e' fis'4 fis'8 ~ fis'4. \phraseBreak %phrase03
  dis'8 | cis' dis' cis' h8 ~ h2 | r1 | \phraseBreak %phrase04
  r4 r8 dis' ~ dis' fis'4 e'8 ~ | e' fis'4 fis'8 ~ fis'4. \phraseBreak %phrase05
  dis'16 cis' | dis'4. dis'8 ~ dis' fis'4 e'8 ~ | e' fis'4 fis'8 ~ fis'4. \phraseBreak %phrase06
  dis'16 cis' | dis'4. dis'8 ~ dis' fis'4 e'8 ~ | e' fis'4 fis'8 ~ fis'4. \phraseBreak %phrase07
  dis'8 | cis' dis' cis' h8 ~ h2 | r1 | \phraseBreak %phrase08
  r4 h'8 h' h'4 fis' | fis' gis' ais' h' | r cis'' cis'' h' | gis'2 r2 | \phraseBreak %phrase09
  r4 h'8 h' h'4 fis' | fis' gis' ais' h' | r cis'' cis'' h' | gis'2 \phraseBreak %phras10
  
  \breathemoj %chorus
  dis''8 cis'' cis'' h' | h'4. h'8 ~ h' cis''4 cis''8 ~ | cis''2 \phraseBreak %phrase11
  dis''8 cis'' cis'' h' | h'2 r2 | r2 \phraseBreak %phrase12
  dis''8 cis'' cis'' h' | h'4. h'8 ~ h' cis''4 cis''8 ~ | cis''2 \phraseBreak %phrase13
  dis''8 cis'' cis'' h' | dis''4 \( e''8 \) dis'' ~ dis'' cis''4 h'8 ~ | h'2 r4 r8 \phraseBreak %phrase14
  
  \breathemoj %bridge
  h'8 \bar "||" dis''4 dis'' dis''4. cis''8 | cis''4 r4 r4 r8 \phraseBreak %phrase15
  h'8 | dis''4 dis'' dis''4. cis''8 | cis''4 r4 r4 r8 \phraseBreak %phrase16
  h' | dis''4 dis'' dis''4. cis''8 | cis''4 r4 r4 r8 \phraseBreak %phrase17
  h' | dis''4 dis'' dis''4. cis''8 | cis'' ( h'4. ) r2 | \phraseBreak %phrase18
  \bar "|."
}

originalChords = \chordmode {
  h1 | fis | gis:m | e |
  h1 | fis | e | e |
  h1 | fis | gis:m | e |
  h1 | fis | e | e |
  h1 | fis | gis:m | e |
  h1/dis | fis | gis:m | e |
  h1 | fis | gis:m | e |
  h1 | fis | gis2:m fis2 | e1|
  h1 | fis | gis:m | e |
  h1 | fis | gis:m | e |
}

croatianLyricsA = \lyricmode {
  %verse 1
  
  Bla -- go -- slo -- vlje -- no
  Tvo -- je i -- me u o -- bi -- lju,
  ko -- je da -- ješ u po -- to -- ku,
  Bla -- go -- slo -- vlje -- no.
  Bla -- go -- slo -- vlje -- no
  Tvo -- je i -- me i ka -- da -- se
  na -- đem ja u -- sred pu -- sti -- nje,
  Bla -- go -- slo -- vlje -- no.
  
  %bridge
  
  Za sve Tvo -- je bla -- go -- slo -- ve
  za -- hva -- lju -- jem.
  kad o -- ba -- vi -- ja me ta -- ma,
  još ka -- zu -- jem:
  
  %ref
  
  Bla -- go -- slo -- vlje -- no ne -- ka je,
  Bla -- go -- slo -- vlje -- no,
  Bla -- go -- slo -- vlje -- no ne -- ka je,
  Tvo -- je sve -- to i -- me Go -- spo -- de.
  
  
  %finale
  
  Ti na -- ma da -- ješ sve
  Ti na -- ma u -- zi -- maš
  a sr -- ce re -- či će
  Bog bla -- go -- slo -- vljen je
  
  %Bla -- go -- slov -- ljen Bog %text01
  %u ze -- mlji pu -- noj o -- bi -- lja %text02
  %Kad iz -- lije -- va svoj bla -- go -- slov, %text03
  %bla -- go -- slov -- ljen Bog %text04
  %Bla -- go -- slov -- ljen Bog %text05
  %kad na -- đem se u pu -- sti -- nji %text06
  %I di -- vlji -- nom ho -- dam sam, _ %text07
  %bla -- go -- slov -- ljen Bog %text08
  %
  %Za sve bla -- go -- slo -- ve tvo -- je pro -- slav -- ljam te %text09
  %Ka -- da ta -- ma sve za -- mra -- či, tad mo -- gu reć %text10
  %
  %Bla -- go -- slov -- ljen Bog, Go -- spod moj %text11
  %Bla -- go -- slov -- ljen Bog %text12
  %Bla -- go -- slov -- ljen Bog, Go -- spod moj %text13
  %Bla -- go -- slov -- ljen Bog, Go -- spod moj %text14
  %
  %Ti nam da -- ješ sve _ %text15
  %Ti nam u -- zi -- maš _ %text16
  %Svim sr -- cem pje -- vam ti %text17
  %Da, bla -- go -- slov -- ljen Bog _ %text18
  
}

croatianLyricsB = \lyricmode {
  %verse 2
  
  Bla -- go -- slo -- vlje -- no
  Tvo -- je i -- me kad sun -- ce sja
  ka -- da mir svijet i -- spu -- nja -- va,
  Bla -- go -- slo -- vlje -- no.
  Bla -- go -- slo -- vlje -- no
  Tvo -- je i -- me u pa -- tnja -- ma
  ka -- da znam bol da -- ri -- va -- nja,
  Bla -- go -- slo -- vlje -- no.
  %Bla -- go -- slov -- ljen Bog %text01
  %ka -- da sun -- ce gri -- je me _ %text02
  %I sve ka -- ko tre -- ba je, _ %text03
  %bla -- go -- slov -- ljen Bog %text04
  %Bla -- go -- slov -- ljen Bog %text05
  %na pu -- tu pu -- nom ne -- vo -- lja %text06
  %Kad bol pri -- ti -- sne o -- da -- svud, %text07
  %bla -- go -- slov -- ljen Bog %text08
}

englishLyricsA = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
  Ble -- ssed be Your name in the land that is plen -- ti -- ful 
  Where Your streams of a -- bun -- dance flow 
  Ble -- ssed be Your name 
  %And
  ble -- ssed be Your name when I'm found in the de -- sert place 
  Though I walk through the wil -- der -- ness 
  Ble -- ssed be your name 
  
  E -- very ble -- ssing You pour out I'll turn back to praise 
  %And
  when the dark -- ness clo -- ses in Lord 
  Still I will say 
  
  Ble -- ssed be the name of the Lord 
  Ble -- ssed be Your name 
  Ble -- ssed be the name of the Lord 
  Ble -- ssed be Your glo  _ -- rio -- us name 
  
  You give and take a -- way 
  You give and take a -- way 
  My heart will choose to say 
  Lord, ble -- ssed be Your name
}

englishLyricsB = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
  Ble -- ssed be Your name when the sun's shi -- ning down on me 
  When the world's all as it should be? 
  Ble -- ssed be Your name 
  %And
  ble -- ssed be Your name on the road marked 
  with su -- ffe -- ring 
  Though there's pain in the o -- ffe -- ring 
  Ble -- ssed be Your name 
}

slb = \lyricmode { "______" } %variable for empty syllable
emptyLyricsA = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
  \slb \slb \slb \slb \slb %\slb01
  \slb \slb \slb \slb \slb \slb \slb %\slb02
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb03
  \slb \slb \slb \slb \slb %\slb04
  \slb \slb \slb \slb \slb %\slb05
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb06
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb07
  \slb \slb \slb \slb \slb %\slb08
  
  \slb \slb \slb \slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb09
  \slb \slb \slb \slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb10
  
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb11
  \slb \slb \slb \slb \slb %\slb12
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb13
  \slb \slb \slb \slb \slb \slb \slb \slb \slb %\slb14
  
  \slb \slb \slb \slb \slb \slb %\slb15
  \slb \slb \slb \slb \slb \slb %\slb16
  \slb \slb \slb \slb \slb \slb %\slb17
  \slb \slb \slb \slb \slb \slb \slb %\slb18
  
}

emptyLyricsB = \lyricmode {
  \override LyricText #'(font-name) = "Baskerville" 
  \override LyricText #'font-size = #-2
  \slb \slb \slb \slb \slb %\slb01
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb02
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb03
  \slb \slb \slb \slb \slb %\slb04
  \slb \slb \slb \slb \slb %\slb05
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb06
  \slb \slb \slb \slb \slb \slb \slb \slb %\slb07
  \slb \slb \slb \slb \slb %\slb08
}

\score {
  <<
    \new ChordNames { \romanChords \transpose h c \originalChords }
    \new ChordNames { \jazzChords \originalChords }
    \new Staff { \originalScore }
    \addlyrics { \croatianLyricsA }
    \addlyrics { \englishLyricsA }
    
    %	\addlyrics { \emptyLyricsA }
    \addlyrics { \croatianLyricsB }
    \addlyrics { \englishLyricsB }
    
    
    %	\addlyrics { \emptyLyricsB }
  >>
}


%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") A
%Blessed Be Your Name
%In the land that is plentiful
%Where Your streams of abundance flow
%Blessed be Your name
%
%Blessed Be Your name
%When I'm found in the desert place
%Though I walk through the wilderness
%Blessed Be Your name
%Every blessing You pour out
%I'll turn back to praise
%When the darkness closes in, Lord
%Still I will say
%}}
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%Blessed be Your name
%When the sun's shining down on me
%When the world's 'all as it should be'
%Blessed be Your name
%
%Blessed be Your name
%On the road marked with suffering
%Though there's pain in the offering
%Blessed be Your name
%
%Every blessing You pour out
%I'll turn back to praise
%When the darkness closes in, Lord
%Still I will say
%}}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") B
%Blessed be the name of the Lord
%Blessed be Your name
%Blessed be the name of the Lord
%Blessed be Your glorious name
%}}
%
%\markup { \override #'(font-name . "JohnSans White Pro")
%	\wordwrap {
%	\box \override #'(font-name . "JohnSans Medium Pro") C
%You give and take away
%You give and take away
%My heart will choose to say
%Lord, blessed be Your name
%	}
%}
%
%
%     \layout {
%       \context {
%         \Score
%         \remove "Bar_number_engraver"
%       }
%     }
