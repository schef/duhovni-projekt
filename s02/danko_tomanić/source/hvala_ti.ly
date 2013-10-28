\version "2.16.2"

\header {
title = "HVALA TI"
composer = "DANKO TOMANIĆ"
poet = "76 BPM | MYSTIC CHORAL"
copyright = ""
subtitle = "GECEMANI"
arranger = ""
}

\include "deutsch.ly"
\include "romanChords_2.0.1.ly"
\include "jazzChords_2.0.1.ly"
\include "config_2.0.1.ly"

%NOTE
%\once \override Score.RehearsalMark #'Y-offset = #-1.7
%\once \override Score.RehearsalMark #'outside-staff-priority = #1
%\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1)
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
        
        \mark \default
        fis4 g a |
        h4 a4. g8 |
        h4 a g |
        fis4 e2 |
        d4 cis h |
        g'4 fis e |
        d4\( d4\) cis4 |
        h2. |
        
        \mark \default
        d4 cis h |
        g'4 fis e |
        d2 cis4 |
        h2. |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName #'X-offset = #2
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
lyricsAOne = \lyricmode {
}

lyricsB = \lyricmode {
}

lyricsC = \lyricmode {
}

\score {
<<
        \new ChordNames { \romanChords \transpose d c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
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
