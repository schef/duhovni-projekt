\version "2.17.29"

\header {
title = "HVALA TI"
composer = "DANKO TOMANIĆ"
bpm = "76"
style = "MYSTIC CHORAL"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key h \minor
        \time 3/4
	\mark \default
	d4 cis h |
        g' fis e |
        d e fis |
        cis2. |
        d4 cis h |
        g'4\( fis\) e |
        d4 e fis |
        cis2. |
        
        \once \override Score.RehearsalMark.X-offset = #-1.05
        \once \override Score.RehearsalMark.Y-offset = #-1
        \mark \default
        fis4 g a |
        h4 a4. g8 |
        h4 a g |
        fis4 e2 |
        d4 cis h |
        g'4 fis e |
        d4\( d4\) cis4 |
        h2. |
        
        \once \override Score.RehearsalMark.X-offset = #-1.5
        \once \override Score.RehearsalMark.Y-offset = #-1.3
        \mark \default
        d4 cis h |
        g'4 fis e |
        d2 cis4 |
        h2. |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        h4*3:m | g | e:m |
        fis2:sus4 fis4 |
        h4*3:m | g | e:m |
        fis2:sus4 fis4 |
        d4*3 | a | e:m |
        fis2:sus4 fis4 |
        h4*3:m | g | f2:dim fis4 |
        h4*3:m | h:m | g | f2:dim fis4 |
        h4*3:m |
}

%HRVATSKI TEKST
lyricsA = \lyricmode {
  hva -- la ti hva -- la ti go -- spo -- de moj __
hva -- la za tvo -- _ ju mu -- ku i znoj __

hva -- la za rije -- či što me -- ni si da -- o __
hva -- la ti što sam te u -- po -- zna -- o __

hva -- la ti hva -- la ti go -- spo -- de __
}

lyricsB = \lyricmode {
  hva -- la ti hva -- la ti go -- spo -- de naš __
hva -- la ti je -- di -- ni u -- sli -- ša -- vaš __

hva -- la što u -- vijek si pri -- su -- tan "s na" -- ma __
hva -- la na du -- bo -- kim ra -- _ na -- ma __
}

lyricsC = \lyricmode {
  lju -- bi -- mo lju -- bi -- mo i -- su -- sa tog __
on je naš spa -- si -- telj on je naš bog __

za vje -- čni ži -- vot za vje -- či -- tu ra -- dost __
hva -- la ti hva -- la ti go -- _ spo -- de __
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsA }
        \addlyrics { \lyricsB }
        \addlyrics { \lyricsC }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 76 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
