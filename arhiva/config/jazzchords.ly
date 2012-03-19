% correct markup for "b" and "#" (use symbols from current font...)
chordFlat = \markup { \hspace #0.1 \fontsize #-1 \raise #0.3 "!" }
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
      (make-simple-markup (vector-ref #("C" "D" "E" "F" "G" "A" "B") (ly:pitch-notename pitch)))
      ;; If it's natural, do nothing
      (if (= alt 0)
        (make-line-markup (list empty-markup))
        (if (= alt FLAT)
          ;; Otherwise, handle adding the flat symbol
          (make-line-markup
            (list
              (make-hspace-markup -0.1)
              (make-small-markup (make-raise-markup 0.7
                (make-text-markup "$")))
            ))
          ;; or handle adding the sharp symbol
          (make-line-markup
            (list
              (make-hspace-markup -0.1)
              (make-small-markup (make-raise-markup 0.7
                (make-text-markup "#")))
            ))
        ))))))

#(define (pitch-alteration-semitones pitch)
  (inexact->exact (round (* (ly:pitch-alteration pitch) 2))))

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

jazzyChords =
{
  \set chordNameExceptions = #jazzyChordsAdd
}

ringsps = #"
  0.2 setlinewidth
  0.9 0.6 moveto
  0.2 1.0 0.8 0 361 arc
  stroke
  1.2 1.0 0.8 0 361 arc
  stroke
  "

rings = \markup {
  \with-dimensions #'(-0.2 . 1.6) #'(0 . 1.2)
  \postscript #ringsps
}
%LSR This snippet was contributed by Mark Polesky for version 2.12.0

%% preferences %%

tearWidth = #1
tearXext = #'(2 . 2)

zigzagDefaultYext = #'(-2 . 2)
zigzagDefaultSerrationCount = #4
zigzagTearLineWidth = #0.1
zigzagTearAngle = #90
zigzagTearXext = #'(0 . 0)


%% start definitions %%

tearGeneric =
  #(define-music-function (parser location lengths) (list?)
  #{
    #(define (x-ext n)
      (cons (* (list-ref $lengths n) (/ tearWidth 4)) tearWidth))
    #(define y-ext '(1.5 . 2.5))

    \once \override Staff.BarLine #'stencil = #ly:text-interface::print
    \once \override Staff.BarLine #'text = \markup
      \override #'(baseline-skip . 0) \with-color #black
      \column {
        \filled-box #(x-ext 0) #y-ext #0
        \filled-box #(x-ext 1) #y-ext #0
        \filled-box #(x-ext 2) #y-ext #0
        \filled-box #(x-ext 3) #y-ext #0
        \filled-box #(x-ext 4) #y-ext #0
      }
    \once \override Staff.BarLine #'layer = #1
    \once \override Staff.BarLine #'X-extent =
      #`(,(car tearXext) . ,(- (+ (cdr tearXext) tearWidth) 0.1))
    \break
  #} )

tear =
  #(define-music-function (parser location) ()
  #{
    \tearGeneric
      #(let loop ((unused '(0 1 2 3 4))
                  (lengths '()))
        (if (= (length lengths) 5)
            lengths
            (let* ((x (random (length unused)))
                   (y (- (length unused) x))
                   (z (list-ref unused x)))
             (loop (append (list-tail unused (+ x 1))
                           (list-tail (reverse unused) y))
                   (append lengths `(,z))))))
  #} )

tearCustom =
  #(define-music-function (parser location lengths) (list?)
  #{ \tearGeneric #$lengths #} )

zigzagTearCustom =
  #(define-music-function (parser location y-ext serrations)
    (pair? number?)
  #{
    #(define zigzagTearHeight (- (cdr $y-ext) (car $y-ext)))
    #(define (deg2rad x) (* x (/ (* (atan 1) 4) 180)))
    %% adjust width to maintain tear-angle:
    #(define zigzagTearWidth
       (/ zigzagTearHeight
          $serrations
          (* (tan (/ (deg2rad zigzagTearAngle) 2)) 2)))

    \once \override Staff.BarLine #'stencil = #ly:text-interface::print
    \once \override Staff.BarLine #'text =
      \markup \with-dimensions
               #`(0 . ,zigzagTearWidth)
               #`(,(car $y-ext) . ,(cdr $y-ext))
        \postscript

#(string-append "
/linewidth " (number->string zigzagTearLineWidth) " def
/height " (number->string zigzagTearHeight) " def
/serrations " (number->string $serrations) " def
/width " (number->string zigzagTearWidth) " def
/padding " (number->string (cdr zigzagTearXext)) " 2 width mul add def

/serrationHeight height serrations div def
/y0 " (number->string (cdr $y-ext)) " def
/xn width def
/yn serrationHeight 2 div neg def

/plotAngle {
  xn yn rlineto
  xn neg yn rlineto
} def

/plotSerrations {
  serrations { plotAngle } repeat
} def

%% whiteout:
1 setgray
linewidth setlinewidth
0 y0 linewidth add moveto %% (whiteout staff-lines when y-exts are integers)
0 y0 lineto
plotSerrations
0 linewidth neg rlineto %% (whiteout staff-lines when y-exts are integers)
padding 0 rlineto
0 height linewidth 2 mul add rlineto %% (account for top and bottom linewidth)
padding neg 0 rlineto
fill stroke

%% draw serrations:
newpath
0 setgray
linewidth setlinewidth
0 y0 moveto
plotSerrations
0 1 2 moveto
plotSerrations
stroke")

    \once \override Staff.BarLine #'layer = #1
    \once \override Staff.BarLine #'X-extent =
      #`(,(car zigzagTearXext) .
       ,(- (+ (cdr zigzagTearXext) zigzagTearWidth) 0.1))
  #} )

zigzagTear = \zigzagTearCustom #zigzagDefaultYext #zigzagDefaultSerrationCount

wstem = #(define-music-function (parser location extent) (pair?) #{ 
     \once \override Staff.BarLine #'extra-spacing-width = #$extent \bar "|" \zigzagTear 
     #})
