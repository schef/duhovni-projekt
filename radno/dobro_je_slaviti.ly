%\version "2.12.3"
\version "2.13.47"

\header{ 
title = \markup \override #'(font-name . "FreeSerif Bold") "DOBRO JE SLAVITI"
subtitle = \markup \override #'(font-name . "FreeSerif") "(H-mol)"
composer = \markup \override #'(font-name . "FreeSerif") "Frank Bosch"
poet = \markup \override #'(font-name . "FreeSerif") "Psalam 92,2.3.6"
} 
\paper {
indent = 0\mm
#(set-paper-size "a5")
}


muzika = {
	\time 4/4
	\key g \major
	\phrasingSlurDashed
%A
fis'4 b4 fis'4 b8 b8 |
g'8 a'8 g'4 fis'4 a'4 |
b'8 a'8 g'4 fis'8 e'8 d'4 | 
e'8 e'8 d'8 e'8 fis'4 r4
%\set Score.repeatCommands = #'(end-repeat)
%}
%	\new Staff {
%	\once \override Staff.TimeSignature #'stencil = ##f
%	e'8 e'8 d'8 cis'8 b4 r4
%} >> 
\bar ":|"\break
\set Timing.measureLength = #(ly:make-moment 9 8)

r2 r4. b8
\bar "|"
b8 cis'8 d'4 cis'4 e'4
\set Timing.measureLength = #(ly:make-moment 4 4)
| d'4 a'4 a'4 g'8 g'8 | fis'8\( e'8\) d'4 e'8\( a'4\) g'8 | 
\set Timing.measureLength = #(ly:make-moment 7 8)
fis'2 fis'4 r8 \bar ""
\set Timing.measureLength = #(ly:make-moment 4 4)
\break
%C
\repeat volta 2 {
g'2. a'8 g'8 |
fis'4.\( e'8\) e'2 |
fis'4 fis'4 fis'4 fis'4 |
e'4 d'4 r2 |
e'2. fis'8\( e'8\) |
d'2 cis'2 | }
\alternative {
{d'2 d'4 d'4 | e'4.\( fis'8\) fis'2 |}
{d'2 e'4 d'4 | cis'2 b2 | }
}
\break
fis'4^\markup {\hspace #-6 \fontsize #1 \rounded-box \italic {Kraj}}
b4 fis'4 b8 b8 | g'8 a'8 g'4 fis'4 a'4 | b'8 a'8 g'4 fis'8 e'8 d'4 |
e'8 e'8 d'8 cis'8 b4 r4 \bar "|."
 }

harme = \chordmode {
\semiGermanChords
%A
b1:m a2 d2
e:m b:m e:m fis
%B
\skip 8
b2:m a2 d e:m 
g a fis2 fis4.
%C
e1:m a d b:m
e:m fis b:m a2/cis d
b1:m fis2 b:m
%Kraj
b1:m a2 d2
e:m b:m e:m b:m

}

rijeci = \lyricmode {
%A
Do -- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji;
%B
Na -- vije -- šta -- ti ju -- trom lju -- bav tvo -- ju
i no -- \skip 8 ću vjer -- \skip 4 nost tvo -- ju
%C
Ka -- ko su sil -- \skip 8 na dje -- la tvo -- ja, Bo -- že
I du -- \skip 8 bo -- ki na -- u -- mi tvo -- \skip 8 ji
na -- u -- mi tvo -- ji
%Kraj
Do -Do -- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji!
- bro, Do -- bro je sla -- vi -- ti Bo -- ga
pje -- va -- ti i -- me -- nu tvo -- me, Sve -- vi -- šnji!

}

\score {
 <<
\new ChordNames { 
 \override ChordName #'font-size = #2
 \override ChordName #'font-name = #"FreeSerif"
 %\override ChordName #'extra-offset = #'(0 . -1)
 \set chordChanges = ##t
 \harme }
\new Staff { \muzika }
\addlyrics { \rijeci }
>>

\midi { \context { 
 	\Score tempoWholesPerMinute = #(ly:make-moment 190 8)
	\remove "Bar_number_engraver" }}
	\layout {}
}


\markuplines {
%\justified-lines {}
%\justified-lines {}
\justified-lines {
 \fontsize #1 {
	\rounded-box \italic { "2 Intro" }
	\rounded-box \italic { "4 Refren *Cure" }
	\rounded-box \italic { "4 Refren *Dečki" }
}}
\justified-lines {}
\justified-lines {
 \fontsize #1 {
	\rounded-box \italic { "4 Kitica *Cure" }
	\rounded-box \italic { "4 Kitica" }
	\rounded-box \italic { "4 Refren *Cure" }
	\rounded-box \italic { "4 Refren *Dečki" }
}}
\justified-lines {}
\justified-lines {
 \fontsize #1 {
	\rounded-box \italic { "4 Kitica *Cure" }
	\rounded-box \italic { "4 Kitica" }
	\rounded-box \italic { "2x8 Most" }
	\rounded-box \italic { "4 Refren" }
	\rounded-box \italic { "4 Kraj" }
	\rounded-box \italic { "6 Outro" }
}}
}
