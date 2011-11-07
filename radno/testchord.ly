\version "2.14.2"

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

myChords = \chordmode {
\displayMusic  {c1:m d es f g a b}
}

\score {
 <<
   \new ChordNames {
     \set chordRootNamer = #my-chord-name->cigo-markup
     %\set chordNameLowercaseMinor = ##t
     \myChords
   }
  \new ChordNames {
     \myChords
  }
  \new Staff {
    \myChords
  }
 >>

 }
