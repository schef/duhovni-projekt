\version "2.17.29"

\language "deutsch"

\header {
  title = "VREMEPLOV"
  composer = "FRANK BOSCH"
}

note = \relative c' {
  \key f \major
  \partial 16*3
  c16 f g |
  a8 g g f16 f ~ f4 r8 r16 f |
  e8 f e f16 e ~ e16 d8. r16 d g a |
  b8 a a g16 g ~ g4 r8 r16 f |
  f8 e d c16 c ~ c4 r16 c f g |
  a8 g g f16 f ~ f4 r8 r16 f |
  e8 f e f16 e ~ e16 d8. r16 d g a |
  b8 a a g16 g ~ g4 r8 r16 f |
  f8 e d c16 c ~ c4 r8 r16 \mark \default c'16 |
  c8 b a g16 g ~ g f8. r8 r16 f |
  a8 b g f16 g ~ g4 r8 r16 c |
  c8 b a g16 g ~ g f8. r8 r16 f |
  a8 b g f16 g ~ g4 r |
  \break
  \mark \default
  c2 c4 ( ~ c8 b ) |
  b2. r4 |
  r4 r8 c8 c b16 a ~ a8 b |
  a4 g8 g ~ g4 r4 |
  c2 c4 ( ~ c8 b ) |
  b2. r4 |
  r4 r8 c8 c b16 a ~ a8 b |
  a4 g8 g ~ g4 r8 f |
  f8 f f a g4 \( f8 \) f ~ |
  f2 r2 |
  %prelaz
  r1 | r1 |
  \bar "|."
}

tekst = \lyricmode {
 Je -- si li i -- kad že -- li -- o pu -- to -- va -- ti kroz vrije -- me?
 U -- ži -- vo vi -- dje -- ti baš sve ne u -- vijek kroz T -- V.
 O -- tić u do -- ba vi -- te -- za i pre -- kra -- snih prin -- ce -- za.
 Po -- sje -- tit dvo -- re kra -- ljev -- ske i sjest na prije -- sto -- lje.
 %
 Da ba -- rem i -- ma na -- čin i -- spu -- nit že -- lju tu.
 Pu -- to -- va -- ti kroz vrije -- me i vi -- djet i -- sti -- nu.
 %
 Vre -- me -- plov, u šta -- li -- cu za -- vi -- ri -- ti.
 Vre -- me -- plov, i du -- bo -- ko do -- ži -- vje -- ti
 ro -- đe -- nje si -- na Bo -- žje -- ga.
}

tekstDva = \lyricmode {
 Po -- sto -- ji knji -- ga ču -- de -- sna i vo -- di te kroz vrije -- me.
 Jer o -- na taj -- ne ot -- kri -- va i sr -- ce o -- tva -- ra.
 Sa njom se mo -- žeš vra -- ti -- ti gdje po -- či -- nje spa -- se -- nje.
 I tad u -- po -- zna -- ti kroz nju tog kra -- lja kra -- lje -- va.
 %
 Sad znam da i -- ma na -- čin i -- spu -- nit že -- lju tu.
 Pu -- to -- va -- ti kroz vrije -- me i vi -- djet i -- sti -- nu.
 %
 Vre -- me -- plov, baš ka -- o Ši -- mun re -- či gle:
 Vre -- me -- plov, "\"Sad" o -- či mo -- je vi -- dje -- še
 o -- Bo -- že tvo -- ga Me -- si -- "ju!\"" % { "Luka 2:30" }
}

akordi = \chordmode {
 s16*3
   f1 |
   d:m |
   g:m |
   b2 c |
   f1 |
   d:m |
   g:m |
   b2 c |
   %
   a2:m d:m
   b2/g c |
   a2:m d:m
   b2/g c |
   %
   f1 |
   g1:m/f |
   f1 |
   c/e |
   f1 |
   d1:m |
   f1 |
   c |
   b2/d c/e
   f1
   %prelaz
   b2/g f/a | b c | 

}

\score {
  <<
  \new ChordNames { \akordi }
  \new Staff { \note }
  \addlyrics { \tekst }
  \addlyrics { \tekstDva }
  >>
}
