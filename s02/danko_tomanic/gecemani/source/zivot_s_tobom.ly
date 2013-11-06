\version "2.17.29"

\header {
title = "ŽIVOT S TOBOM"
composer = "DANKO TOMANIĆ"
bpm = "116 BPM"
style = "BARRY ROCK"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key d \major
	\mark \default
	e4. fis8( fis4) a, |
        e'4. fis8 ~ fis4 e4 |
        e4. d8 ~ d4 cis |
        cis4. d8 ~ d4 a |
        e'4. fis8 ~ fis4 a, |
        e'4. fis8 ~ fis4 a4 |
        e4. d8 ~ d4 cis |
        cis4. d8 ~ d2 |
        r8 g g g16 g ~ g8 fis e4 |
        r8 g8 g g16 g ~ g8 fis g4 |
        a1 |
        r1 |
        r8 g g g16 g ~ g8 fis e8 g |
        r8 g8 g g16 g( ~ g8 fis) g4 |
        a1 |
        r1 | \break
        
        \mark \default
        a1 ~ |
        a2. h4 |
        fis8( e4) d8 ~ d4 d8 d |
        g8 fis d d ~ d e ~ e4 |
        
        \mark \default
        a1 ~ |
        a2. h4 |
        fis8( e4) d8 ~ d4 d8 d |
        g8 fis d g( ~ g fis) e( d) |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t    
        d2:sus2 d | d:sus2 d |
        h2:sus2 h:m | h:sus2 h:m |
        d2:sus2 d | d:sus2 d |
        h2:sus2 h:m | h:sus2 h:m |
        e1:m | g | a | a |
        e1:m | g | a | a |
        
        d1 | a | h:m | g2 a2 |
        d1 | a | h:m | g2 a2 |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
Ži -- vot što me -- ni __ si da -- o __ ja ži -- vim
i te -- bi se kla -- njam i te -- bi __ se di -- vim __
jer ti si je -- di -- ni ko -- ji mi do -- no -- siš mir
dije -- li -- mo do -- bro i zlo u -- vijek smo za -- je -- dno.
}

lyricsATwo = \lyricmode {
Lju -- bav što me -- ni __ si da -- o __ da lju -- bim
i ne -- ću da grije -- šim __ da te -- be __ i -- zgu -- bim __
%jer ti si je -- di -- ni ko -- ji mi do -- no -- siš mir
%dije -- li -- mo do -- bro i zlo u -- vijek smo za -- je -- dno
}

lyricsB = \lyricmode {
Tvo -- ja lju -- bav __ o -- na ži -- vi u me -- ni __
Tvo -- ja lju -- bav __ o -- na ži -- vi u na -- ma. __
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 128 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
