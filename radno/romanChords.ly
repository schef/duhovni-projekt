% correct markup for "b" and "#" (use symbols from current font...)
chordFlat = \markup { \hspace #0.1 \fontsize #-1 \raise #0.3 "$" }
chordSharp = \markup { \hspace #0.1 \fontsize #-1 \raise #0.3 "#" }

min = \markup { \fontsize #-4 \raise #0.4 #(ly:export (ly:wide-char->utf-8 #x2013)) }
maj = \markup { \fontsize #-6 \raise #0.6 #(ly:export (ly:wide-char->utf-8 #x0394)) }
dim = \markup { \fontsize #-4 \raise #0.45 #(ly:export (ly:wide-char->utf-8 #x00b0)) }
hdim = \markup { \fontsize #-4 \raise #0.25 #(ly:export (ly:wide-char->utf-8 #x00d8)) }
aug = \markup { \fontsize #-4 \raise #0.75 "+" }
cetri = \markup { \fontsize #-4 \raise #0.5 "4" }
sest = \markup { \fontsize #-4 \raise #0.5 "6" }
sedam = \markup { \fontsize #-4 \raise #0.5 "7" }
devet = \markup { \fontsize #-4 \raise #0.5 "9" }
trinaest = \markup { \fontsize #-4 \raise #0.5 "13" }
sus = \markup { \fontsize #-5 \raise #0.8 "sus" }

romanChordsMusic =
{
  %kvintakordi
  <c ees g>-\markup { \min }
  <c ees ges>-\markup {\dim }
  <c e gis>-\markup { \aug }
  <c f g>-\markup { \sus \cetri }
  %septakordi
  <c e g a>-\markup { \maj \sest }
  <c e g b>-\markup { \maj \sedam }
  <c e g bes>-\markup { \sedam }
  <c ees g bes>-\markup { \min \sedam }
  <c ees ges bes>-\markup { \hdim }
  %nonakordi
  <c ees g bes d'>-\markup { \min \devet }
  % Add more as needed
}


romanChordsAdd = #(append
  (sequential-music-to-chord-exceptions romanChordsMusic #t)
    ignatzekExceptions)

% cigo
#(define (my-chord-name->cigo-markup pitch lowercase?)
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
              (make-hspace-markup -0.05)
              (markup #:fontsize -2 (make-raise-markup 0.35
                (make-text-markup "!")))
            ))
          ;; or handle adding the sharp symbol
          (make-line-markup
            (list
              (make-hspace-markup -0.05)
              (markup #:fontsize -2 (make-raise-markup 0.35
                (make-text-markup "#")))
            ))
        ))))))

#(define ((my-chord-name->german-markup B-instead-of-Bb)
                     pitch lowercase?)
  "Return pitch markup for PITCH, using german note names.
   If B-instead-of-Bb is set to #t real german names are returned.
   Otherwise semi-german names (with Bb and below keeping the british names)
"
  (let* ((name (ly:pitch-notename pitch))
         (alt-semitones  (pitch-alteration-semitones pitch))
         (n-a (if (member (cons name alt-semitones) `((6 . -1) (6 . -2)))
                  (cons 7 (+ (if B-instead-of-Bb 1 0) alt-semitones))
                  (cons name alt-semitones))))
    (make-line-markup
     (list
      (make-simple-markup
       (conditional-string-downcase
                (vector-ref #("C" "D" "E" "F" "G" "A" "H" "B") (car n-a))
                lowercase?))
      (make-normal-size-super-markup
       (accidental->markup (/ (cdr n-a) 2)))))))


#(define (my-chord-name->german-markup pitch lowercase?)
  (let* ((name (ly:pitch-notename pitch))
         (alt-semitones (pitch-alteration-semitones pitch))
         (n-a (if (member (cons name alt-semitones) `((6 . -1) (6 . -2)))
                  (cons 7 (+ 1 alt-semitones))
                  (cons name alt-semitones))))
    (make-line-markup
     (list
      (string-append
       (list-ref '("c" "d" "e" "f" "g" "a" "h" "b") (car n-a))
       (if (or (equal? (car n-a) 2) (equal? (car n-a) 5))
           (list-ref '( "ses" "s" "" "is" "isis") (+ 2 (cdr n-a)))
           (list-ref '("eses" "es" "" "is" "isis") (+ 2 (cdr n-a)))))))))


romanChords =
{
  \set chordNameExceptions = #romanChordsAdd
}

