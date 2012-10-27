\version "2.14.2"

\include "deutsch.ly"
\include "romanChords_grand.ly"
\include "jazzChords_grand.ly"

\header {
	title = "ČUDESNA JE LJUBAV"
	composer = "BILLY JAMES FOOTE"
	poet= "TEST | TEST"
	subtitle = "\"AMAZING LOVE\""
	copyright = "Copyright"
}

\include "config_grand.ly"

scoreA = \relative c' {
	\key d \major
	\mark \default
	r4 fis8 e16 e ~ e d8. r8. a16 | %1
	fis'8 g16 fis ~ fis8 g16 fis ~ fis e8. r4 |
	r4 fis8 e16 e ~ e d8. r4 |
	r8 fis16 fis ~ fis8 e16 e ~ e4 r4 | %4
	r4 a8 a16 a ~ a8 d,16 d ~ d8. d16 |
	fis8 g16 fis ~ fis8 g16 fis ~ fis e8. r8. cis16 |
	d4 fis8 e ~ e e16 e ~ e8 d16 d ~ |
	d1 | %8
}

scoreB = \relative c' {
	\once \override Score.RehearsalMark #'Y-offset = #-2
	\mark \default
	\repeat volta 2 {
	r8. fis16 a8 a16 a ~ a4. h8 ~ | %9
	h8 a8 ~ a16 a16 d,8 ~ d2 |
	r8. d16 d e d fis ~ fis8 fis16 g ~ g fis e e ~ |
	}
	\alternative {
	{e2 r2 |}
	{e2 r8 fis16 e ~ e8 d |} %13
	}
	e8 d ~ d4 ~ d8 e e d16 d ~ |
	d1 |
}

scoreC = \relative c' {
	\mark \default
	fis2. e16( d) e8 ~ | %16
	e8 d ~ d2 r4 |
	fis2. e16( d) e8 ~ | %18
	e8 d ~ d2 d8 e |
	fis2. e16( d) e8 ~ | %20
	e8 d ~ d2 d8 e |
	fis2. e16( d) e8 ~ | %22
	e8 d ~ d2 r4 |
	\bar "|."
}

chordsA = \chordmode {
	d2/fis g | a2:sus4 a | d/fis g |
	a:sus4 a | d/fis g | a:sus4 a |
	g a | d1 |
}

chordsB = \chordmode {
	\set chordChanges = ##f
	d1 |
	\set chordChanges = ##t
	g | d | a2:sus4 a |
	a2:sus4 a | g a | d1 |
}

chordsC = \chordmode {
	d1 | d | d | d |
	d | d | d | d |
}

lyricsAOne = \lyricmode {
Od -- ba -- čen si \skip8 bi -- o ti zbog me -- ne                  
Ja pri -- hva -- ćen 
\left "A ti" o -- su -- đen
I do -- bro mi je
Tvoj Duh u me -- ni ži -- vi
Jer u -- mro "si i" u -- skrs -- nu -- o
}

lyricsBOne = \lyricmode {
\skip8 Ču -- de -- sna je lju -- bav ta
\skip8 Zbog me -- ne u -- mro je moj \skip8 Kralj
\skip8 Svi -- me u me -- ni da -- jem ti čast
}

lyricsBTwo = \lyricmode {
\repeat unfold 40 { \skip8 }
Ču -- de -- sna je lju -- bav ta
\skip8 Ra -- do -- sno te pro -- sla -- vljam
}

lyricsC = \lyricmode {
Ti si moj Kralj
Ti si moj Kralj
"[je" -- "sus]" Ti si moj Kralj
"[je" -- "sus]" Ti si moj Kralj
}

\score {
<<
	\new ChordNames { \romanChords \transpose d c { \chordsA \chordsB \chordsC } }
	\new ChordNames { \jazzChords \chordsA \chordsB \chordsC }
	\new Staff { \scoreA \scoreB \scoreC }
	\addlyrics { \lyricsAOne \lyricsBOne \lyricsC }
	\addlyrics { \lyricsBTwo }
>>
}
