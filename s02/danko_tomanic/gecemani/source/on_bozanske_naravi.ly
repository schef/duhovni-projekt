\version "2.17.29"

\header {
title = "ON BOŽANSKE NARAVI"
composer = "DANKO TOMANIĆ"
bpm = "100"
style = "80's POP"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key f \major
	\mark \default
	g4 a8 a\( ~ a c, ~ c4\) |
        r8 b'8 b b a4. g8 |
        g8\( f\) e g16 f\( ~ f8 f\) f f |
        g4. d8\( d2\) |
        f4 e d\( e8 g ~ |
        g8\) f ~ f2. |
        
        \once \override Score.RehearsalMark.X-offset = #-1.7
        \once \override Score.RehearsalMark.Y-offset = #-1.4
        \mark \default
        r4 a8 a d4. a8 |
        c4. d8 ~ d c ~ c4 |
        r8 b8 b b c4. d8 ~ |
        d8 c ~ c4 r2 |
        r4 b8 b c4. d8 |
        c4. a8 f2 |
        b4 a8 a g f4 f8 ~ |
        f2 r2 |
        \bar "|."
        
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f   
        f1 | b2 c | d1:m | g2 g/f |
        b4 f/a g:m c |
        f1 |
        
        d1:m | a:m | b2 c | f a:m7.5- |
        b2 c | a:m d:m | b4 f/a g:m c |
        f1 |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
I o -- dlu -- či __ o -- dlu -- či go -- spod si -- ći me -- đu nas
da sva -- kom po -- ka -- že put do ne -- _ _ ba __
}

lyricsATwo = \lyricmode {
Zna -- o je __ _ da u -- mrijet će na kri -- žu gol -- got -- skom __ _
al se ni -- je __ _ bo -- ja -- o ni to -- ga __

}

lyricsAThree = \lyricmode {
Bog ga lju -- bi __ "" bog ga di -- že na __ _ vi -- si -- ne
nek mu se sva -- ko __ _ ko -- lje -- no po -- klo -- ni __
}

lyricsB = \lyricmode {
on bo -- žan -- ske na -- ra -- vi __ po -- ni -- zi sam se -- be __
on bo -- žan -- ske na -- ra -- vi __ go -- spo -- dar i -- sus krist __
}

\score {
<<
        \new ChordNames { \romanChords \transpose f c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB }
        \addlyrics { \lyricsATwo }
        \addlyrics { \lyricsAThree }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 100 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
