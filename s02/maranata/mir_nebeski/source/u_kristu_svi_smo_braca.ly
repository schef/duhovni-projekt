\version "2.17.29"

\header {
	title = "U KRISTU SVI SMO BRAĆA"
		composer = "MARANATA"
		bpm = "105"
		style = "OLD SCHOOL"
		titlex = "MIR NEBESKI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c' {
	\key f \major
		\time 3/4
		\mark \default
		\partial 4
		f8\( g\) |
		a4 a\( a8\) g |
		f4 c c8 f |
		a4\( a4.\) g8 |
		f4\( f\) e8 f |
		g4 g4. f8 |
		e8\( d\) c4 f8 g |
		a4 f4. d8 |
		c2 r8 a'8 |
		c4 c4. c8 |
		a8\( g\) f4 f8 g |
		a2 f8\( d\) |
		c2 e8 f |
		g4 g4. g8 |
		e8\( d\) c4 c8 c |
		b'4 a g |
		f2. |
		r2

		\breathemoj
		c'8 c |
		c4. c8 c c |
		c2 a8 a |
		a4 g f |
		d2 g4 |
		g2 g8 g |
		e8( d) c2 |
		b'4 c4. b8 |
		a2 r8 c8 |
		c4 c4. c8 |
		c4 a a8 a |
		a4 g f |
		d2 g8 g |
		g2 g8 f |
		e8 d c4 c8 c |
		b'4 a g |
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
	f4*3 | f | f | f |
	c4*3 | c | f2 b4 | f4*3 | f | f |
	f2 b4 | f4*3 | c | c | g4:m c c/e |
	f2 b4/f | f4*3 |

	f4*3 | f | g:7 | g:7 | c:7 | c:7 |
	g4:m c2 | f4*3 | f | f | g:7 | g:7 |
	c4*3:7 | c:7 | g4:m c c/e |
	f2 b4/f | f2 
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
Da u Kri -- stu spa -- si -- te -- lju mi smo bra -- ća i se -- stre
sad smo svi je -- dna o -- bi -- telj je -- dan i -- ma -- mo dom
kad ne -- tko je tu -- _ žan no -- si -- mo nje -- gov bol  %njeg' -- vu bol ??? BOLJE?
čak i naj -- ma -- nju ra -- _ dost spre -- mno svi dije -- li -- mo
}

lyricsB = \lyricmode {
Sre -- tan sam što pri -- pa -- dam bo -- žjoj o -- bi -- te -- lji
krv i -- su -- sa kri -- sta moj o -- pra grijeh
bijeh ne -- koć da -- le -- ko po -- stah pri -- ja -- telj "s njim"
za -- u -- vijek gle sad pri -- pa -- dam bo -- žjoj o -- bi -- te -- lji

}

lyricsATwo = \lyricmode {
Ne -- _ shva -- čen __ _ u dru -- štvu u -- zeh kri -- _ stov križ __ _
no -- vu pje -- smu sad pje -- _ vam ra -- do -- šću i -- spu -- njen
od pro -- sta -- ka po -- sta -- doh pri -- ja -- telj bo -- _ žji
to -- ga ja ni -- sam do -- sto -- jan i -- pak lju -- bi me bog

}

\score {
	<<
		\new ChordNames { \romanChords \transpose f c \akordi }
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
		\midi { \tempo 4 = 105 }
}


%{
	convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
		Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
						 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
							 %}
