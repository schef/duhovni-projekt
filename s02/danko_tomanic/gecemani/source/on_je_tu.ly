\version "2.17.29"

\header {
title = "ON JE TU"
composer = "DANKO TOMANIĆ"
bpm = "95"
style = "CRO ROCK"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key c \major
	\mark \default
	e4 e g g |
        c,4 c e2 |
        c4. a8 f'8 e d c |
        e2\( d\) |
        e4 e g a8( h) |
        c8 h a g e2 |
        a8 g f e a g f e |
        r4 e8\( c\) d4. c8 |
        c2 r2 | \break
        
        %\once \override Score.RehearsalMark.X-offset = #-1.7
        %\once \override Score.RehearsalMark.Y-offset = #-1.2
        \mark \default
        r4 c'4 h4. g8 |
        a4. f8 e2 |
        r4 c'8 c h4. g8 |
        g4 a8 a( g2) |
        r4 c4 h4. g8 |
        a4. f8 e2 |
        r4 e4 g4. e8 |
        e8( d ~ d2) c8 d |
        c1 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        c2 g/h | a:m g | f1 |
        g2/g g | c g/h | a:m e:m | f1 |
        c2/g g | c1 |
        
        a2:m e:m | f c | a:m e:m | g1 |
        a2:m e:m | f c | a:m e:m | g1 |
        c1 |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
I -- sus i -- sus on je tu
i -- sus on je u mom snu __ _
i -- sus i -- sus __ on mi da -- je sve
on me lju -- bi on me spa -- si i -- _ zba -- vi me.
}

lyricsATwo = \lyricmode {
I -- sus i -- sus pje -- vam ti
i -- sus pje -- sma nek ti ka -- že
i -- sus i -- sus __ hva -- la ti za sve
što me lju -- biš što me spa -- siš što i -- zba -- vljaš me.
}

lyricsB = \lyricmode {
Ne mo -- gu ži -- vje -- ti
ni -- ti znam za po -- bje -- de __
ne mo -- gu ži -- vje -- ti
bez o -- ca mog __ ne -- be -- skog.
}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
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
