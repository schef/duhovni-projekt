% correct markup for "b" and "#" (use symbols from current font...)
chordFlat = \markup { \hspace #0.2 \fontsize #-1 \raise #0.3 "b" }
chordSharp = \markup { \hspace #0.1 \fontsize #-1 \raise #0.3 "#" }

jazzyChordsMusic =
{
  %<c ees g>-\markup { "-" }         % Cm -> C-
  <c ees g>1-\markup {#(ly:export (ly:wide-char->utf-8 #x2013))} % Cm -> C-
  %<c e g>-\markup { \super { "7/" \chordSharp "9" } }
  <c ees g bes>-\markup { "-7" }    % Cm7 -> C-7
  <c ees g bes d'>-\markup { "-9" } % Cm9 -> C-9
  % Add more as needed
}

% Add to existing exceptions

jazzyChordsAdd = #(append
  (sequential-music-to-chord-exceptions jazzyChordsMusic #t)
  ignatzekExceptions)

% fix accidentals with some Scheme (using the current font's symbols)
#(define (my-chord-name->pop-markup pitch lowercase?)
  (let* ((alt (ly:pitch-alteration pitch)))
  (make-line-markup
    (list
      (make-simple-markup (vector-ref #("C" "D" "E" "F" "G" "A" "H" "B") (ly:pitch-notename pitch)))
      ;; If it's natural, do nothing
      (if (= alt 0)
        (make-line-markup (list empty-markup))
        (if (= alt FLAT)
          ;; Otherwise, handle adding the flat symbol
          (make-line-markup
            (list
              (make-hspace-markup 0.3)
              (make-small-markup (make-raise-markup 0.7
                (make-text-markup "b")))
            ))
          ;; or handle adding the sharp symbol
          (make-line-markup
            (list
              (make-hspace-markup -0.1)
              (make-small-markup (make-raise-markup 0.7
                (make-text-markup "#")))
            ))
        )))))
)


jazzyChords =
{
  \set chordNameExceptions = #jazzyChordsAdd
}
