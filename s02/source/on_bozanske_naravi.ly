\version "2.16.2"

\header {
title = "ON BOŽANSKE NARAVI"
composer = "DANKO TOMANIĆ"
poet = "100 BPM | 80's POP"
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
note = \relative c'' {
	\key f \major
	\mark \default
	g4 a8 a\( ~ a c, ~ c4\) |
        r8 b'8 b b a4. g8 |
        g8\( f\) e g16 f\( ~ f8 f\) f f |
        g4. d8\( d2\) |
        f4 e d( e8) g\( ~ |
        g8 f ~ f2.\) |
        
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
%\once \override ChordNames.ChordName #'X-offset = #2
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
\midi { \tempo 4 = 100 }
}
