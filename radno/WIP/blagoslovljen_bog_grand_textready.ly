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
}

\include "config_grand.ly"

%scoreA = \relative c {
%	\key d \major
%	\mark \default
%	r4 r8 fis8 ~ fis a4 g8 ~ |
%	g8 a4 a8 ~ a4. e8 |
%	fis8 fis4 fis8 ~ fis a4 g8 ~ |
%	g8 a4 a8 ~ a4. e8 |
%	fis8 fis4 fis8 ~ fis a4 g8 ~ |
%	g8 a4 a8 ~ a2 |
%	fis8 e e d d2 |
%	r1 |
%	r4 r8 fis8 ~ fis a4 g8 ~ |
%	g8 a4 a8 ~ a4. e8 |
%	fis8 fis4 fis8 ~ fis a4 g8 ~ |
%	g8 a4 a8 ~ a4. e8 |
%	fis8 fis4 fis8 ~ fis a4 g8 ~ |
%	g8 a4 a8 ~ a2 |
%	fis8 e e d d2 |
%	r1 |
%	r4 d'8 d d4 a4 |
%	a h cis d |
%	r4 e4 e d |
%	h1 |
%	r4 d8 d d4 a4 |
%	a h cis d |
%	r4 e4 e d |
%	\break
%	h2 }
%
%scoreB = \relative c {
%	%\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
%	%\override Score.RehersalMark #'break-align-anchor-alignment = #RIGHT
%	%\once \override Score.RehearsalMark #'Y-offset = #-1.5
%	%\once \override Score.RehearsalMark #'X-offset = #0.02
%	\breathemoj
%	%\mark \default
%	fis'8 e e d |
%	d4. d8 ~ d e4 e8 ~ |
%	e2 fis8 e e d |
%	d1 ~ |
%	d2 fis8 e e d |
%	d4. d8 ~ d e4 e8 ~ |
%	e2 fis8 e e d |
%	fis4( g8) fis ~ fis e4 d8 ~ |
%	d1 |
%	\bar "||" \break
%}
%
%scoreC = \relative c {
%	\mark \default
%	fis'4 fis fis4. e8 |
%	e2 r2 |
%	fis4 fis fis4. e8 |
%	e8( d4.) r4 r8 d8 |
%	fis4 fis fis4. e8 |
%	e2 r4 r8 d8 |
%	fis4 g fis4. e8 |
%	e8( d4.) r2 |
%	\bar "|." \break
%}

phraseBreak = { \bar "" \break }
%phraseBreak = { }

myScore = {
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
    h' | dis''4 dis'' dis''4. cis''8 | cis'' \( h'4. \) r2 | \phraseBreak %phrase18
    \bar "|."
}

%chordsA = \chordmode {
%	h1 | fis | gis:m | e |
%	h1 | fis | e | e |
%	h1 | fis | gis:m | e |
%	h1 | fis | e | e |
%	h1 | fis | gis:m | e |
%	h1/dis | fis | gis:m | e |
%}
%
%chordsB = \chordmode {
%	%\once \override ChordNames.ChordName #'X-offset = #1
%	h1 | fis | gis:m | e |
%	h1 | fis | gis2:m fis2 | e1|
%}
%
%chordsC = \chordmode {
%	h1 | fis | gis:m | e |
%	h1 | fis | gis:m | e |
%}

myChords = \chordmode {
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

lyricsAOne = \lyricmode {
Bla -- go -- slov -- ljen Bog %text01
u ze -- mlji pu -- noj o -- bi -- lja %text02
Kad iz -- lije -- va svoj bla -- go -- slov, %text03
bla -- go -- slov -- ljen Bog %text04
Bla -- go -- slov -- ljen Bog %text05
kad na -- đem se u pu -- sti -- nji %text06
I di -- vlji -- nom ho -- dam sam, _ %text07
bla -- go -- slov -- ljen Bog %text08

Za sve bla -- go -- slo -- ve tvo -- je pro -- slav -- ljam te %text09
Ka -- da ta -- ma sve za -- mra -- či, tad mo -- gu reć %text10
}

lyricsB = \lyricmode {
Bla -- go -- slov -- ljen Bog, Go -- spod moj %text11
Bla -- go -- slov -- ljen Bog %text12
Bla -- go -- slov -- ljen Bog, Go -- spod moj %text13
Bla -- go -- slov -- ljen Bog, Go -- spod moj _ %text14
}

lyricsC = \lyricmode {
Ti nam da -- ješ sve _ %text15
Ti nam u -- zi -- maš _ %text16
Svim sr -- cem pje -- vam ti %text17
Da, bla -- go -- slov -- ljen Bog _ %text18
}

lyricsATwo = \lyricmode {
Bla -- go -- slov -- ljen Bog %text01
ka -- da sun -- ce gri -- je me _ %text02
I sve ka -- ko tre -- ba je, _ %text03
bla -- go -- slov -- ljen Bog %text04
Bla -- go -- slov -- ljen Bog %text05
na pu -- tu pu -- nom ne -- vo -- lja %text06
Kad bol pri -- ti -- sne o -- da -- svud, %text07
bla -- go -- slov -- ljen Bog %text08
}

%\score {
%<<
%	\new ChordNames { \romanChords \transpose h c { \chordsA \chordsB \chordsC } }
%	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
%	\new Staff { \displayLilyMusic \transpose d h { \scoreA \scoreB \scoreC } }
%	\addlyrics { \lyricsAOne \lyricsB \lyricsC }
%	\addlyrics { \lyricsATwo }
%>>
%}

\score {
<<
	\new ChordNames { \romanChords \transpose h c \myChords }
	\new ChordNames { \jazzChords \myChords }
	\new Staff { \myScore }
	\addlyrics { \lyricsAOne \lyricsB \lyricsC }
	\addlyrics { \lyricsATwo }
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
