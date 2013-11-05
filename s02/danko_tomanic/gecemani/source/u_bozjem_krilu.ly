\version "2.17.29"

\header {
title = "U BOŽJEM KRILU"
composer = "DANKO TOMANIĆ"
poet = "132"
style = "HOT ROD POP"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key c \major
	\mark \default
	r4 c8 c c c ~ c4 |
        h4 c8 h ~ h2 |
        r4 r8 a8 a g4 f8 |
        e2 r2 |
        r4 r8 a8 a g4 f8 |
        e4 f8 e ~ e2 |
        r4 a8 a a h4 c8 |
        h1 |
        
        \mark \default
        r4 a8 a h a g c ~ |
        c8 a4 e8 ~ e2 |
        r4 r8 a8\( g\) g f g\( ~ |
        g8 e ~ e4\) r2 |
        r4 a8 a h a g c ~ |
        c8 a4 e8 ~ e2 |
        r4 a8 a8\( g\) g f g\( ~ |
        g8 e ~ e4\) r2 |
        
        \mark \default
        r4 a8 a h a g c ~ |
        c8 a4 e8 ~ e2 |
        r4 a8 a g g e d ~ |
        d8 c ~ c4 r2 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t
        a1:m | e:m | f | e:m |
        f1 | e:m | f | g |
        
        f2 g | c:6 a:m | f g | c1:6 |
        f2 g | c:6 a:m | f g | c1:6 |
        f2 g | c:6 a:m | f g | c1:6 |
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
        \new ChordNames { \romanChords \transpose c c \akordi }
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
\midi { \tempo 4 = 132 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
