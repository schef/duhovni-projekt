%ROMAN CHORDS

% correct markup for "b" and "#" (use symbols from current font...)
chordFlat = \markup { \hspace #0 \fontsize #0 \raise #0.3 "$" }
chordSharp = \markup { \hspace #0 \fontsize #0 \raise #0.3 "#" }

min = \markup { \fontsize #0 \raise #0 #(ly:export (ly:wide-char->utf-8 #x2013)) }
maj = \markup { \fontsize #0 \raise #0 #(ly:export (ly:wide-char->utf-8 #x0394)) }
dim = \markup { \hspace #-0.2 \fontsize #-5 \raise #0.8 #(ly:export (ly:wide-char->utf-8 #x00b0)) }
hdim = \markup { \fontsize #0 \raise #0 #(ly:export (ly:wide-char->utf-8 #x00d8)) }
aug = \markup { \fontsize #0 \raise #0 "+" }
cetri = \markup { \fontsize #0 \raise #0 "4" }
sest = \markup { \fontsize #0 \raise #0 "6" }
sedam = \markup { \fontsize #-0.05 \raise #0 "7" }
devet = \markup { \fontsize #0 \raise #0 "9" }
trinaest = \markup { \fontsize #0 \raise #0 "13" }
sus = \markup { \fontsize #0 \raise #0 "sus" }

romanChordsMusic =
{
  %kvintakordi
  <c e g b c'>-\markup { }
  <c es g>-\markup { }
  <c es ges>-\markup { }
  <c e gis>-\markup { }
  <c f g>-\markup { }
  %septakordi
  <c e g a>-\markup { }
  <c e g b>-\markup { }
  <c e g h>-\markup { }
  <c es g b>-\markup { }
  <c es ges b>-\markup { }
  %nonakordi
  <c es g b d'>-\markup { }
  % Add more as needed
}


romanChordsAdd = #(append
  (sequential-music-to-chord-exceptions romanChordsMusic #t)
    ignatzekExceptions)

% roman chords
#(define (my-chord-name->major-markup pitch lowercase?)
  (let* ((alt (ly:pitch-alteration pitch)))
  (make-line-markup
    (list
      (make-simple-markup (vector-ref #("I" "II" "III" "IV" "V" "VI" "VII") (ly:pitch-notename pitch)))
      ;; If it's natural, do nothing
      (if (= alt 0)
        (make-line-markup (list empty-markup))
        (if (= alt FLAT)
          ;; Otherwise, handle adding the flat symbol
          (make-line-markup
            (list
              (make-hspace-markup 0.2)
              (markup #:fontsize 0 (make-raise-markup 0
                (make-text-markup "!")))
            ))
          ;; or handle adding the sharp symbol
          (make-line-markup
            (list
              (make-hspace-markup 0)
              (markup #:fontsize 0 (make-raise-markup 0
                (make-text-markup "#")))
            ))
        ))))))

% roman chords minor
#(define (my-chord-name->minor-markup pitch lowercase?)
  (let* ((alt (ly:pitch-alteration pitch)))
  (make-line-markup
    (list
      (make-simple-markup (vector-ref #("III" "IV" "V" "VI" "VII" "I" "II") (ly:pitch-notename pitch)))
      ;; If it's natural, do nothing
      (if (= alt 0)
        (make-line-markup (list empty-markup))
        (if (= alt FLAT)
          ;; Otherwise, handle adding the flat symbol
          (make-line-markup
            (list
              (make-hspace-markup 0.2)
              (markup #:fontsize 0 (make-raise-markup 0
                (make-text-markup "!")))
            ))
          ;; or handle adding the sharp symbol
          (make-line-markup
            (list
              (make-hspace-markup 0)
              (markup #:fontsize 0 (make-raise-markup 0
                (make-text-markup "#")))
            ))
        ))))))

romanChords =
{
  \set chordNameExceptions = #romanChordsAdd
}

