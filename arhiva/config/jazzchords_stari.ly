jazzyChordsMusic =
{
  <c ees g>-\markup { "-" }         % Cm -> C-
  <c ees g bes>-\markup { "-7" }    % Cm7 -> C-7
  <c ees g bes d'>-\markup { "-9" } % Cm9 -> C-9
  % Add more as needed
}

jazzyChordsAdd = #(append
  (sequential-music-to-chord-exceptions jazzyChordsMusic #t)
  ignatzekExceptions)

jazzyChords =
{
  \set chordNameExceptions = #jazzyChordsAdd
}
