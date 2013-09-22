\version "2.16.2"

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"

\header {
	title = "JOYFULLY JOYFULLY"
		subtitle = ""
		composer = "RON KENOLY"
		poet= ""
		copyright = "topli pozdravi od bibija i štefa B)"
		%album = Wenn der Tag Kommt
}

\include "config_grand.ly"

%	%\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
%	%\override Score.RehersalMark #'break-align-anchor-alignment = #RIGHT
%	%\once \override Score.RehearsalMark #'Y-offset = #-1.5
%	%\once \override Score.RehearsalMark #'X-offset = #0.02


originalScore = \relative c'' {
	\key e \major

		%A dio
		\mark \default
		cis8. h16 ~ h8 a gis8. fis16 ~ fis8 e |
                fis16 fis8 fis16 ~ fis gis8 fis16 r2 |
                fis16 fis8 fis16 ~ fis gis8 a16 ~ a4 e8 e16 gis16 ~ |
                gis2 r2 |
                cis8. h16 ~ h8 a gis8. fis16 ~ fis8 e |
                fis16 fis8 fis16 ~ fis gis8 fis16 r4.. e16 |
                fis16 fis8 fis16 ~ fis gis8. a8 a16 gis16 ~ gis8 fis |
                e2 r2 |
                \bar "||"

		%B dio
		\mark \default
		cis'4\staccato cis\staccato cis\staccato cis\staccato |
                cis4 cis8 cis16 cis ~ cis cis8 cis16 ~ cis16 cis8 cis16 ~ |
                cis16 h8. ~ h4 r2 |
                r2 r4 gis8 h |
                cis4\staccato cis\staccato cis\staccato cis\staccato |
                cis8 cis16 cis ~ cis cis8 cis16 ~ cis cis8 h16 ~ h16 cis8 h16 ~ |
                h2 r2 |
                r2 r4 a8 gis |
                fis8. fis16 ~ fis gis8 a16 ~ a4 a8 gis
                fis8. fis16 ~ fis gis8 a16 ~ a4 r8 h8 |
                cis8. h16 ~ h8 gis cis8. h16 ~ h8 gis |
                cis8 cis h cis16 h ~ h4
                
                %C dio
                \breathemoj
                gis8 h |
                cis4 ~ cis8. cis16 r4 cis8 cis |
                %h4 ~ h8. gis16 r4 r8 gis8 |
                h4 ~ h8. gis16 r2 |                
                a8. gis16 ~ gis8 fis a8. gis16 ~ gis8 fis |
                gis4 a h gis8 h |
                cis4 ~ cis8. cis16 r4 cis8 cis |
                %h4 ~ h8. gis16 r4 r8 gis8 |
                h4 ~ h8. gis16 r2 |
                a16 a8 gis16 ~ gis8 fis a8. gis16 ~ gis8 fis |
                cis1 |
		\bar "|."
}

%	%\once \override ChordNames.ChordName #'X-offset = #1

originalChords = \chordmode {
        %A dio
	cis1:m | h | h | e2. gis4:m |
        cis1:m | h | fis2:m h | e1 |
        
        %B dio
        a1 | fis2:m h | e1 | e |
        a1 | fis2:m h | e1 | e |
        a16*5 e8/gis fis16*9:m | 
        a16*5 e8/gis fis16*9:m |
        h1 |
        
        %C dio
        h1 | a1 | gis2:m cis2 |
        fis2 h | e1 | ais2:dim a2 | gis2:m cis2 |
        fis2 h2 | e1 |
        
}

englishLyrics = \lyricmode {
Ra -- do -- sno, ra -- do -- sno
do -- la -- zi -- mo sad
Go -- spo -- da -- ru svom
da -- ti sve __
Ra -- do -- sno, ra -- do -- sno
do -- la -- zi -- mo sad
U Nje -- go -- vu bli -- zi -- nu
ra -- do -- sno

Bog pre --  bi -- va sad
"s na" -- ro -- dom što sla -- vi Nje -- ga __
Tra -- ži o -- ne što ga
sla -- ve duh -- om svim u i -- sti -- ni __
Ru -- ka -- ma di -- gnu -- tim
hva -- lom i -- spu -- nje -- ni __
sa pje -- smom i ple -- som
svi Te -- be sla -- vi -- mo

Ha -- le -- lu -- ja, ha -- le -- lu -- ja
pri -- la -- zi -- mo "k nje" -- mu
"s ra" -- do -- šću
Ha -- le -- lu -- ja, ha -- le -- lu -- ja
Sr -- ca mu po sve
ću -- je -- mo.
}


\score {
	<<
	\new ChordNames { \romanChords \transpose e c  \originalChords }
	\new ChordNames { \jazzChords \originalChords }


	{ \time 4/4  \originalScore }
        \addlyrics { \englishLyrics }
	>>
}
