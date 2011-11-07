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
  <c es g>-\markup { \min }
  <c es ges>-\markup {\dim }
  <c e gis>-\markup { \aug }
  <c f g>-\markup { \sus \cetri }
  %septakordi
  <c e g a>-\markup { \maj \sest }
  <c e g b>-\markup { \maj \sedam }
  <c e g b>-\markup { \sedam }
  <c es g b>-\markup { \min \sedam }
  <c es ges b>-\markup { \hdim }
  %nonakordi
  <c es g b d'>-\markup { \min \devet }
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


romanChords =
{
  \set chordNameExceptions = #romanChordsAdd
}

