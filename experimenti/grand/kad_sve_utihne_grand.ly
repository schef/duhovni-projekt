\version "2.14.2"

\header {
title = "KAD SVE UTIHNE"
subtitle = "\"WHEN THE MUSIC FADES\""
composer = "MATT REDMAN"
poet = "TEST | TEST"
copyright = "The Heart of Worship” by Matt Redman Copyright © 1997 Thankyou Music"
}

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"
\include "config_grand.ly"

%NOTE
scoreA = \relative c' {
	\key d \major
	\mark \default
	r4. a'16 a16 a8 d,4 e8 ~ |
	e4. e8 fis8 e e d16 d |
	r4. a'16 a16 a8 d,4 e8 ~ |
	e1 |
	r4. a16 a16 a8 d,4 e8 ~ |
	e2 fis8 e e d16 d |
	r4. a'16 a16 a8 d,4 e8 ~ |
	e1 |
	\mark \default
	r8 g8 g g fis e d e ~ |
	e4. e16 d fis8 e d h |
	r8 g'8 g g fis e d e ~ |
	e1 |
	r8 g8 g g fis e d e ~ |
	e4. e16 d fis8 e d h |
	r8 g'8 g g a fis h e, ~ |
	e1 |	
	\bar "||" \break
}

scoreB = \relative c' {
	\mark \default
	r8 a'8 a a a d, d h' ~ |
	h8 a4 fis8 ~ fis8 e4 d8 |
	fis8 fis g fis ~ fis4 r4 |
	fis8[ fis] g fis4 e8 d8[ d] |
	r8 a'8 a a a d, d h' ~ |
	h8 a4 fis8 ~ fis8 e4 d8 |
	fis8 fis g fis ~ fis4 r4 |
	fis8[ fis] g fis4 e8 d8[ d] |
	\bar "|." \break
}

%AKORDI
chordsA = \chordmode {
%\skip 8
	ces1
%pomice akord u gore
%\override ChordName #'Y-offset = #4
%pomice akord u desno
%\once \override ChordNames.ChordName #'extra-offset = #'(10 . 0)
}

chordsB = \chordmode {
	ces1
}

%HRVATSKI TEKST

lyricsAOne = \lyricmode {
Kad sve u -- ti -- hne
I gla -- zba pre -- sta -- ne
Te -- bi do -- la -- zim
Že -- lim do -- nije -- ti
Ne -- što po -- se -- bno
Što te ra -- du -- je

Vi -- še od sa -- me pje -- sme
Ne -- što mno -- go du -- blje
Do -- no -- sim te -- bi na dar
Pro -- ni -- češ du -- šu mo -- ju
Vi -- diš sr -- ce mo -- je
Ku -- ca li o -- no za tebe
}

lyricsB = \lyricmode {
Do -- la -- zim po -- no -- vo bli -- že te -- bi
Jer va -- žan si ti
Va -- žan si ti I -- su -- se
O -- pro -- sti Go -- spo -- de za sve dru -- go
Kada va -- žan si ti
Va -- žan si ti I -- su -- se
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c { \chordsA \chordsB} }
        \new ChordNames { \jazzChords \chordsA \chordsB }
        \new Staff { \scoreA \scoreB }
        \addlyrics { \lyricsAOne \lyricsB }
>>
}

