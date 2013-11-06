\version "2.17.29"

\header {
title = "U BOŽJEM DOMU"
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
        
        \once \override Score.RehearsalMark.X-offset = #-1.7
        \once \override Score.RehearsalMark.Y-offset = #-1.4
        \mark \default
        r4 a8 a h a g c ~ |
        c8 a4 e8 ~ e2 |
        r4 r8 a8\( g\) g f g\( ~ |
        g8 e ~ e4\) r2 |
        r4 a8 a h a g c ~ |
        c8 a4 e8 ~ e2 |
        r4 a8 a8\( g\) g f g\( ~ |
        g8 e ~ e4\) r2 |
        
        %\once \override Score.RehearsalMark.X-offset = #-1.7
        %\once \override Score.RehearsalMark.Y-offset = #-1.2
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
lyricsA = \lyricmode {
Do -- ša -- o sam u dom tvoj __
da ču -- jem ti riječ
da sna -- gu mi po -- da -- riš __
jer još mno -- go ću priječ
}

lyricsBOne = \lyricmode {
Sad kad sla -- vi -- mo go -- spo -- da __
kroz pje -- smu i slo -- vo __
o -- pet do -- zna -- jem i -- sti -- nu __
o -- pet __ _ ne -- što no -- vo __

o -- pet do -- zna -- jem i -- sti -- nu __
o -- pet su -- sret "s vi" -- si -- na. __
}

lyricsBTwo = \lyricmode {
\repeat unfold 25 _
Sad kad sla -- vi -- mo go -- spo -- da __
kroz pje -- smu i stih __ ""
znam da ne -- gdje uz me -- ne je __
ma da glas mu je tih __ ""
}

lyricsBThree = \lyricmode {
  \repeat unfold 25 _
Sad kad sla -- vi -- mo i -- su -- sa __
tog __ _ bo -- žjeg si -- na __
o -- pet do -- zna -- jem i -- sti -- nu __
o -- pet su -- sret "s vi" -- si -- na __
}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsA \lyricsBOne }
        \addlyrics { \lyricsBTwo }
        \addlyrics { \lyricsBThree }
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
