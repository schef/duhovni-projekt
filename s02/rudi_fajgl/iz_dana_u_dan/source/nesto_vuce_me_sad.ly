\version "2.17.29"

\header {
title = "NEŠTO VUČE ME SAD"
composer = "RUDI FAJGL"
bpm = "98"
style = "GOSPEL POP"
titlex = "IZ DANA U DAN"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key g \major
        \time 4/4
	\mark \default
	r4 h8 h c c h h( |
	a4) r4 r2 |
	r4 h8 h c8 c4 g8 |
	g8( a) h a ~ a4 r4 |
	r4 h8 h c c h h( |
	a4) r4 r4 a8 a |
	a8 g ~ g4 r2 |
	a8 g4 g8 g( a) h8 h( ~ |
	h16 a g8 ~ g2.) |
	r1 | \break

	\mark \default
	r4 d'4 g,4. e8 |
	g8 a h a ~ a4 r4 |
	r8 h8 h h c c c c |
	h4 h8 a ~ a4 r4 |
	r4 d4 g,4. e8 |
	g8 a h a ~ a4 r4 |
	r4 c8 c16 c ~ c8 h a g |
	r4 c8 c16 c ~ c8 h a g( |
	a8) a ~ a2. ~ |
	a1 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				g2 c | d1 | g2 a:m | e:m d |
				g2 c | d1 | c | a2:m d | g1 |
				g1 |

				h2:m e:m | c d | e:m c | g d |
				h2:m e:m | c d | a1:m | c | d | d |
}

%HRVATSKI TEKST
lyricsA = \lyricmode {
	Ne -- što vu -- če me sad, __ bli -- že Te -- bi u za -- gr -- ljaj. __
	Ne -- što vu -- če me sad, __ bli -- že Te -- bi, __ Te -- bi, u za -- gr -- ljaj. __

	Bo -- že u -- či -- ni mi to, __ o -- či -- sti mo -- je sr -- ce se -- bi -- čno. __
	Sad znam da tre -- baš mi Ti. __
	Mo -- ja du -- ša pa -- ti, želj -- na Tvo -- je lju -- ba -- vi. __
}

\score {
<<
        \new ChordNames { \romanChords \transpose g c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsA }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 98 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
