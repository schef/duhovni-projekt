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

