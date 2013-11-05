\version "2.17.29"

\header {
title = "ON SVJETILJKU MOJU UŽIŽE"
composer = "DANKO TOMANIĆ"
bpm = "66"
style = "ROMANTIC ROCK"
titlex = "TVOJE NEBO"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key f \major
	\mark \default
	r16 c c c c d e c ~ c4 r4 |
        r16 c c c c b8 a16 g8 f e4 |
        r16 c' c c c d e c ~ c4 r4 |
        r16 c c c c b8 a16 g8 f e4 |
        r16 d' d d d c8 b16 cis4 r8 a8 |
        d8 a a g16 f ~ f2 |
        \time 2/4
        r2 |
        
        \mark \default
        \time 4/4
        r16 g g g g a8 b16 a8 c16 c ~ c4 |
        r16 g16 g g g\( f\) e8 f4 r4 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f      
        f2 c/e | d:m c |
        f2 c/e | d:m c |
        b2 a:7 | d4:m c b2 | b2 |
        
        c2 f | c f |
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
        \new ChordNames { \romanChords \transpose f c \akordi }
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
\midi { \tempo 4 = 66 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
