%Lilypond test za Kao ruza
\version "2.14.2"

#(set-default-paper-size "a4")
%#(set-global-staff-size 10)

\paper {
indent = 0
first-page-number = #1
print-first-page-number = ##t
auto-first-page-number = ##t
top-markup-spacing #'padding = #10
top-system-spacing #'padding = #10
%odvaja naslov header od systema
markup-system-spacing #'padding = #10
%markup-markup-spacing #'padding = #15
%odvaja prvi system od drugog ako nema markup
score-system-spacing #'padding = #5
%system-system-spacing #'padding = #5
last-bottom-spacing #'padding = #5
%ragged-last-bottom=##f
%annotate-spacing = ##t
}
\layout {
  \context {
      \Score
          \remove "Bar_number_engraver"
	    }
	    }


\include "jazzchords.ly"
\include "deutsch.ly"
\header {
  title = "MEIN HAUS SOLL EIN BETHAUS SEIN"
  %subtitle = "(kao ruža)"
  composer = "Frank Bosch"
}
%\paper {
%indent = 0
%}

SCOREVERSE = \relative c' {
	\key e \major
	\partial 4
	\time 3/4
%kitica
\mark \markup {\italic Chorus }
	e4 |
	e2. (|
	fis2 ) e8 fis |
	gis4 e2 |
	dis8 (cis~ cis4.) h8
	gis'4 gis4. fis8 |
	e4 ( fis ) gis |
	gis8 (a ) fis2 |
	r2 e4 |
	e2. (|
	fis2 ) e8 fis |
	gis4 e2 |
	dis8 (cis~ cis4.) h8
	gis'4 gis4. e8 |
	fis4 ( gis ) fis |
	fis8 (e ) e2 |
	r2
	
}
SCORECHORUS = \relative c' {
	\key e \major
	\time 3/4
	\partial 4
\mark \markup { \italic Verse }
%refren

	\times 2/3 {a'8 gis a} |
	gis8 e4. \times 2/3 {a8 gis a} |
	gis8 e4. \times 2/3 {a8 gis a} |
	gis8 e4. \times 2/3 {a8 gis a} |
	gis8 e4. ~ e8 h |
	gis'4 gis gis |
	fis e dis |
	e2. |
	r2 |


%	\set Timing.measurePosition = #(ly:make-moment -3 4)
%	| \bar "|."	
}

SCOREBRIDGE = \relative c' {
	\key f \major
	\time 3/4
	\partial 8
\mark \markup { \italic Bridge }
%bridge
	f8 |
	f4 f f8 g |
	e2 f8 g |
	a4 a b |
	g2 a8 b |
	c2. (|
	b2 ) a4 |
	g8( f) f2 |
	r2 c8( e) |
	f4 f f8 g |
	e4 e f8 g |
	a2( b4) |
	g4. g8 a b |
	c2. |
	b2( a) |
	a2.~ |
	a2 \bar ""

}

CHORDSVERSE = \chordmode {
\jazzyChords
s4
e2. h2. cis2.:m a2.
e2. cis2.:m a2. h2.
e2. h2. cis2.:m a2.
e2. h2. a2. a2
}

CHORDSCHORUS = \chordmode {
\jazzyChords
s4
e2. cis:m a e
e h a a2
}

CHORDSBRIDGE = \chordmode {
\jazzyChords
s8
d2.:m c f g:m f b c c
d2.:m c f g:m f b c c2
}

LYRICSVERSEONE = \lyricmode {
Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Völ -- ker  
Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Völ -- ker
}

LYRICSCHORUSONE = \lyricmode {
Geht an die Hec -- ken, geht an die Zäu -- ne,  geht auf die Stra -- ßen, geht auf die Plät -- ze
Und la -- det sie ein in mein Haus.
}

LYRICSCHORUSTWO = \lyricmode {
Geht in die Dör -- fer, geht in die Städ -- te, geht in den Dschun -- gel, geht auf die In -- seln
Und ich ge -- he euch selbst vor -- aus.
}

LYRICSCHORUSTHREE = \lyricmode {
Geht zu den Kin -- dern, gebt ih -- nen Hoff -- nung, gebt ih -- nen Glau -- ben, gebt ih -- nen Lie -- be
Und la -- det sie ein in mein Haus.
}

LYRICSCHORUSFOUR = \lyricmode {
Gebt ih -- nen E -- ssen, gebt ih -- nen Klei -- der,  gebt ih -- nen Wär -- me und ein Zu -- hau -- se.
Und ich ge -- he euch selbst vor -- aus.
}

LYRICSCHORUSFIVE = \lyricmode {
Geht zu den Star -- ken, geht zu den Herr -- schern geht zu den Rei -- chen geht zu den Sa -- tten.
Und la -- det sie ein in mein Haus
}
LYRICSCHORUSSIX = \lyricmode {
Geht zu den Schwa -- chen geht zu den Kran -- ken, gebt ih -- nen Hoff -- nung, heilt die Ge -- bre -- chen.
Und ich ge -- he euch selbst vor -- aus.
}

LYRICSBRIDGE = \lyricmode {
Das E -- van -- ge -- li -- um muss ver -- kün -- digt wer -- den un -- ter a -- llen Völ -- kern
Und sie -- he ich bin bei Euch, a -- lle Ta -- ge bis an der Welt En -- de
}

\book {
\score {
	<<
	\new ChordNames {   \semiGermanChords
						\set chordChanges = ##t
						\CHORDSVERSE }
	\new Voice { \SCOREVERSE }
	\addlyrics { \LYRICSVERSEONE }
	>>
	%\midi {}
}
\score {
	<<
	\new ChordNames {   \semiGermanChords
						\set chordChanges = ##t
						\CHORDSCHORUS }
	\new Voice { \SCORECHORUS }
	\addlyrics { \LYRICSCHORUSONE }
	\addlyrics { \LYRICSCHORUSTWO }
	\addlyrics { \LYRICSCHORUSTHREE }
	\addlyrics { \LYRICSCHORUSFOUR }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
%modulacija
\score {
	<<
	\new ChordNames {   \semiGermanChords
						\set chordChanges = ##t
						\transpose e f
						\CHORDSVERSE }
	\new Voice { \transpose e f \SCOREVERSE }
	\addlyrics { \LYRICSVERSEONE }
	>>
	%\midi {}
}
\pageBreak
\score {
	<<
	\new ChordNames {   \semiGermanChords
						\set chordChanges = ##t
						\transpose e f
						\CHORDSCHORUS }
	\new Voice { \transpose e f \SCORECHORUS }
	\addlyrics { \LYRICSCHORUSFIVE }
	\addlyrics { \LYRICSCHORUSSIX }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
\score {
	<<
	\new ChordNames {   \semiGermanChords
						\set chordChanges = ##t
						\CHORDSBRIDGE }
	\new Voice { \SCOREBRIDGE }
	\addlyrics { \LYRICSBRIDGE }
	>>
	\layout {\context {\Staff \remove "Time_signature_engraver" }}
	%\midi {}
}
\score {
	<<
	\new ChordNames {   \semiGermanChords
						\set chordChanges = ##t
						\transpose e a
						\CHORDSVERSE }
	\new Voice { \transpose e a \SCOREVERSE r4 \bar "|."}
	\addlyrics { \LYRICSVERSEONE }
	>>
	%\midi {}
}
}

     \layout {
       \context {
         \Score
         \remove "Bar_number_engraver"
       }
     }
