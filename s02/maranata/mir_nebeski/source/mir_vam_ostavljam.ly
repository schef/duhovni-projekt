\version "2.17.29"

\header {
title = "MIR VAM OSTAVLJAM"
composer = "MARANATA"
bpm = "93"
style = "BALADA"
titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key es \major
        \time 4/4
	\mark \default
	g2 b2 |
	c4( b) as2 |
	b4. as8 g4 g |
	f1 |
	g2 b |
	c4( d) es2 |
	b4 g f4. es8 |
	es1 | \break

	\mark \default
	r8 f8 f f f f g as |
	b4 f8 f ~ f4 g |
	r8 as8 as as as as b c |
	c4 g8 g\( ~ g g ~ g4\) |
	r8 b8 b b b b c d |
	es8\( es\) c8 c ~ c4 es8\( es\) |
	d4 b8 b\( ~ b b\) d4 |
	c4 as8 as ~ as2 |
	\bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##t       
				es1 | as/es | es4/g b/f es2 | b1 |
				es1 | as4 es/g f2:m | es2/b b | es1 |

				b1 | b | as |
				c1:m | b | as | g:m |
				b:sus4.7 |
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
	Ja vam ne da -- jem ka -- o svijet što da -- je
	da se ne bo -- ji pla -- ho sr -- ce va -- še __
	o -- hra -- bri -- te se i mir nek __ _ u -- pra -- vlja __ _
	va -- ma jer __ _ po -- bije -- dih svijet

}

lyricsB = \lyricmode {
	Mir, mir, mir, __ mir, mir __ vam o -- sta -- vljam.
	Mir, mir, mir, __ mir, mir svoj da -- jem vam.
}

lyricsATwo = \lyricmode {
	\repeat unfold 18 _
	Ja vam ne da -- jem ka -- o svijet što da -- je
	to ni -- je mir što vla -- da i -- znad gro -- ba __
	to ni -- je mir ko -- ji se si -- lom do -- bi -- va __ _
	kad smo ti -- ho i šu -- ti -- mo __

}

lyricsAThree = \lyricmode {
	\repeat unfold 18 _
	To mir je bo -- žji i -- znad sva -- kog u -- ma
	mir bo -- žji na ko -- ji ste po -- zva -- ni __ _
	ču -- vat će va -- še mi -- sli va -- _ ša sr -- ca
	u bo -- žjem si -- _ nu i -- su -- su __
}

\score {
<<
        \new ChordNames { \romanChords \transpose es c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsB \lyricsAOne }
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
\midi { \tempo 4 = 93 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
