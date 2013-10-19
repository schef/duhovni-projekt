\version "2.16.2"

\include "deutsch.ly"
\include "jazzChords_grand.ly"
\include "romanChords_grand.ly"
\include "changePitch.ly"

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
  e1 |
  \bar "|."
}

%	%\once \override ChordNames.ChordName #'X-offset = #1

altstari = {
  gis' fis' fis' e' dis' cis' cis' h |
  dis' dis' dis' dis' e' dis' |
  dis' dis' dis' dis' e' fis' fis' cis' cis' e' |
  e' |
  gis' fis' fis' e' dis' cis' cis' h |
  dis' dis' dis' dis' e' dis' cis' |
  cis' cis' cis' cis' e' fis' fis' e' e' cis' |
  e' |
  %2
  cis'' cis'' cis'' h' |
  a' a' a' a' a' a' a' a' a' a' |
  a' gis' gis' |
  e' gis' |
  a' a' cis'' h' |
  a' a' a' a' a' a' a' a' gis' gis' a' gis' gis' |
  |
  r r |
  r r r r r r |
  cis' h |
  a a a h cis' cis' gis' |
  a' gis' gis' e' a' gis' gis' e' |
  a' a' gis' a' fis' fis' e' gis |
  
  a' a' a' a' a' |
  gis' gis' e' |
  fis' e' e' cis' fis' e' e' cis' |
  e' fis' gis' e' gis' |
  a' a' a' a' a' |
  gis' gis' e' |
  fis' fis' e' e' cis' fis' e' e' cis' |
  h |
  
}

alt = {
      gis'8. fis'16 ~ fis'8 e' dis'8. cis'16 ~ cis'8 h |
     dis'16 dis'8 dis'16 ~ dis' e'8 dis'16 r2 |
     dis'16 dis'8 dis'16 ~ dis' e'8 fis'16 ~ fis'4 cis'8 cis'16 e' ~ |
     e'2 r |
     gis'8. fis'16 ~ fis'8 e' dis'8. cis'16 ~ cis'8 h |
     dis'16 dis'8 dis'16 ~ dis' e'8 dis'16 r4.. cis'16 |
     cis' cis'8 cis'16 ~ cis' e'8. fis'8 fis'16 e' ~ e'8 cis' |
     e'2 r |

     cis''4-. cis''-. cis''-. h'-. |
     a' a'8 a'16 a' ~ a' a'8 a'16 ~ a' a'8 a'16 ~ |
     a' gis'8. ~ gis'4 r2 |
     r r4 e'8 gis' |
     a'4-. a'-. cis''-. h'-. |
     a'8 a'16 a' ~ a' a'8 a'16 ~ a' a'8 gis'16 ~ gis' a'8 gis'16 ~ |
     gis'2 r |
     r1 |
     r2 r4 cis'8 h a8. a16 ~ a h8 cis'16 ~ cis'4 r8 gis' |
     a'8. gis'16 ~ gis'8 e' a'8. gis'16 ~ gis'8 e' |
     a' a' gis' a'16 fis' ~ fis'4 
     
     e'8 gis' |
     a'4 ~ a'8. a'16 r4 a'8 a' |
     gis'4 ~ gis'8. e'16 r2 |
     fis'8. e'16 ~ e'8 cis' fis'8. e'16 ~ e'8 cis' |
     e'4 fis' gis' e'8 gis' |
     a'4 ~ a'8. a'16 r4 a'8 a' |
     gis'4 ~ gis'8. e'16 r2 |
     fis'16 fis'8 e'16 ~ e'8 cis' fis'8. e'16 ~ e'8 cis' |
     h1
   }

tenor = {
  e'8. dis'16 ~ dis'8 cis'8 h8. a16 ~ a8 gis8 | h16 h8 h16 ~ h16 h8 h16 r2 | h16 h8 h16 ~ h16 h8 h16 ~ h4 h8 h16 h16 ~ | 
  h2 r2 | e'8. dis'16 ~ dis'8 cis'8 h8. a16 ~ a8 gis8 | h16 h8 h16 ~ h16 h8 h16 r4.. gis16 | a16 a8 a16 ~ a16 h8. cis'8 cis'16 h16 ~ h8 a8 |
  gis2 r2 | a4 a4 a4 gis4 | fis4 fis8 fis16 h16 ~ h16 h8 h16 ~ h16 h8 e16 ~ | e16 e8. ~ e4 r2 | r2 r4 e8 h8 | 
  a4 a4 a4 gis4 | fis8 fis16 fis16 ~ fis16 fis8 h16 ~ h16 h8 h16 ~ h16 h8 e16 ~ | e2 r2 | r1 | r1 | r2 r4. h8 |
  %h8. h16 ~ h8 h8 h8. h16 ~ h8 h8    | h8     h8   h8    cis'16 dis'16 ~ dis'4 e'8 e'8
  h8. h16 ~ h8 h8 h8. h16 ~ h8 cis' | dis'8 dis'8 dis'8 dis'16 dis'16 ~ dis'4 e'8 e'8
  | e'4 ~ e'8. e'16 r4 e'8 e'8 | dis'4 ~ dis'8. cis'16 r2 | cis'8. h16 ~ h8 a8 cis'8. h16 ~ h8 a8 |
  h4 cis'4 e'4 e'8 e'8 | e'4 ~ e'8. e'16 r4 e'8 e'8 | dis'4 ~ dis'8. cis'16 r2 | cis'16 cis'8 h16 ~ h8 a8 cis'8. h16 ~ h8 a8 | gis1 ||
}

bass = {
  s1
}

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

#(define (rest-score r)
   (let ((score 0)
         (yoff (ly:grob-property-data r 'Y-offset))
         (sp (ly:grob-property-data r 'staff-position)))
     (if (number? yoff)
         (set! score (+ score 2))
         (if (eq? yoff 'calculation-in-progress)
             (set! score (- score 3))))
     (and (number? sp)
          (<= 0 2 sp)
          (set! score (+ score 2))
          (set! score (- score (abs (- 1 sp)))))
     score))

#(define (merge-rests-on-positioning grob)
   (let* ((can-merge #f)
          (elts (ly:grob-object grob 'elements))
          (num-elts (and (ly:grob-array? elts)
                         (ly:grob-array-length elts)))
          (two-voice? (= num-elts 2)))
     (if two-voice?
         (let* ((v1-grob (ly:grob-array-ref elts 0))
                (v2-grob (ly:grob-array-ref elts 1))
                (v1-rest (ly:grob-object v1-grob 'rest))
                (v2-rest (ly:grob-object v2-grob 'rest)))
           (and
            (ly:grob? v1-rest)
            (ly:grob? v2-rest)
            (let* ((v1-duration-log (ly:grob-property v1-rest 'duration-log))
                   (v2-duration-log (ly:grob-property v2-rest 'duration-log))
                   (v1-dot (ly:grob-object v1-rest 'dot))
                   (v2-dot (ly:grob-object v2-rest 'dot))
                   (v1-dot-count (and (ly:grob? v1-dot)
                                      (ly:grob-property v1-dot 'dot-count -1)))
                   (v2-dot-count (and (ly:grob? v2-dot)
                                      (ly:grob-property v2-dot 'dot-count -1))))
              (set! can-merge
                    (and
                     (number? v1-duration-log)
                     (number? v2-duration-log)
                     (= v1-duration-log v2-duration-log)
                     (eq? v1-dot-count v2-dot-count)))
              (if can-merge
                  ;; keep the rest that looks best:
                  (let* ((keep-v1? (>= (rest-score v1-rest)
                                       (rest-score v2-rest)))
                         (rest-to-keep (if keep-v1? v1-rest v2-rest))
                         (dot-to-kill (if keep-v1? v2-dot v1-dot)))
                    ;; uncomment if you're curious of which rest was chosen:
                    ;;(ly:grob-set-property! v1-rest 'color green)
                    ;;(ly:grob-set-property! v2-rest 'color blue)
                    (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
                    (if (ly:grob? dot-to-kill)
                        (ly:grob-suicide! dot-to-kill))
                    (ly:grob-set-property! rest-to-keep 'direction 0)
                    (ly:rest::y-offset-callback rest-to-keep)))))))
     (if can-merge
         #t
         (ly:rest-collision::calc-positioning-done grob))))


\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne \originalScore }
      %\new Voice = "altos" { \voiceTwo << \changePitch \originalScore \alt >> }
      \new Voice = "altos" { \voiceTwo \alt }
    >>
    %        \new Lyrics \with { alignAboveContext = women } \lyricsto sopranos \englishLyrics
    \new Lyrics \with { alignBelowContext = women } \lyricsto sopranos \englishLyrics
    % we could remove the line about this with the line below, since we want
    % the alto lyrics to be below the alto Voice anyway.
    % \new Lyrics \lyricsto altos \altoWords

    \new Staff = men <<
      \clef bass
      %\new Voice = "tenors" { \voiceOne << \changePitch \originalScore \tenor >> }
      %\new Voice = "basses" { \voiceTwo << \changePitch \originalScore \tenor >> }
      \new Voice = "basses" { \key e \major \tenor }
    >>
    %\new Lyrics \with { alignAboveContext = men } \lyricsto tenors \rijeciBas
    %    \new Lyrics \with { alignBelowContext = men } \lyricsto basses \bassWords
    % again, we could replace the line above this with the line below.
    % \new Lyrics \lyricsto basses \bassWords
  >>
  \layout {
    \context {
      % a little smaller so lyrics
      % can be closer to the staff
      \Staff
      \override RestCollision #'positioning-done = #merge-rests-on-positioning
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
  \midi {}
}
%\score {
%  <<
%    \new ChordNames { \romanChords \transpose e c  \originalChords }
%    \new ChordNames { \jazzChords \originalChords }
%    \new Staff { \time 4/4  \originalScore }
%    \addlyrics { \englishLyrics }
%    \new Staff { \time 4/4  << \changePitch \originalScore \alt >> }
    %\new Staff { \time 4/4  \clef bass << \changePitch \originalScore \tenor >> }
%    \new Staff { \clef bass \key e \major \tenor }
    
%  >>
%}