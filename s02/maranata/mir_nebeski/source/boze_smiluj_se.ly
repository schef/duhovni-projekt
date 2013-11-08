\version "2.17.29"

\header {
title = "BOŽE SMILUJ SE"
composer = "MARANATA"
bpm = "79"
style = "BALADA"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key f \major
        \time 3/4
	\mark \default
	\partial 4
        a4 |
        c4 d4. c8 |
        c2 a4 |
        c8 c b4 a |
        f2 f4 |
        c'4 b a |
        b8 a f4. f8 |
        a4 g f |
        g2 a4 |
        c4 d4. c8 |
        c4 d4. a8 |
        c4 b a |
        f4 f4. f8 |
        c'4 b a |
        b8( a) f4. c8 |
        d4 f g |
        f2. |
        r2 
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
        s4 |
        f4*3 |
        f4*3:maj/e |
        f4*3:7/es |
        b4*3/d | b:m/des |
        f4*3/c | g/h | c:sus4.7 |
        f4*3 | f:maj/e | f:7/es | b/d |
        b4*3:m/des | f/c | c:sus4.7 | f | f2 
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Bo -- že smi -- luj se po mi -- lo -- sr -- đu svom
	po vel' -- kom smi -- lo -- va -- nju i -- zbri -- ši moj grijeh
	O -- pe -- ri me sve -- ga od mo -- je kri -- vi -- ce
	od grije -- ha me mo -- jeg daj o -- či -- sti sad

}

\score {
<<
        \new ChordNames { \romanChords \transpose f c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 79 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
