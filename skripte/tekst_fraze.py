#!/usr/bin/env python3

import sys
import re
filename = sys.argv[1]

#otvaranje fajla
f = open(filename)
lines = f.readlines()
f.close()

rijecnik = {
"fraza01" : "tekst01",
"fraza02" : "tekst02",
"fraza03" : "tekst03",
"fraza04" : "tekst04",
"fraza05" : "tekst05",
"fraza06" : "tekst06",
"fraza07" : "tekst07",
"fraza08" : "tekst08",
"fraza09" : "tekst09",
"fraza10" : "tekst10",
"fraza11" : "tekst11",
"fraza12" : "tekst12",
"fraza13" : "tekst13",
"fraza14" : "tekst14",
"fraza15" : "tekst15",
"fraza16" : "tekst16",
"fraza17" : "tekst17",
"fraza18" : "tekst18",
"fraza19" : "tekst19",
"fraza20" : "tekst20"
}

regexFraza = [
    re.compile("c.*"),
    re.compile("d.*"),
    re.compile("e.*"),
    re.compile("f.*"),
    re.compile("g.*"),
    re.compile("a.*"),
    re.compile("b.*"),
    re.compile("h.*")
    ]

regexTekst = [
  re.compile("--"),
  re.compile("\skip.*"),
  re.compile(".*tekst01"),
  re.compile(".*tekst02"),
  re.compile(".*tekst03"),
  re.compile(".*tekst04"),
  re.compile(".*tekst05"),
  re.compile(".*tekst06"),
  re.compile(".*tekst07"),
  re.compile(".*tekst08"),
  re.compile(".*tekst09"),
  re.compile(".*tekst10"),
  re.compile(".*tekst11"),
  re.compile(".*tekst12"),
  re.compile(".*tekst13"),
  re.compile(".*tekst14"),
  re.compile(".*tekst15"),
  re.compile(".*tekst16"),
  re.compile(".*tekst17"),
  re.compile(".*tekst18"),
  re.compile(".*tekst19"),
  re.compile(".*tekst20")
]

#trazenje linija koje imaju %fraza ili %tekst

def brojanjeSlogovaFraza(regexes, linija):
  i = 0
  for ndx, member in enumerate(linija):
    if any(regex.match(member) for regex in regexes):
      if linija[ndx-1] != "~":
        #print (" nije tie: ", linija[ndx-1], linija[ndx])
        if (linija[ndx-1] != "|" or linija[ndx-2] != "~"):
          #print (" nije bar: ", linija[ndx-2], linija[ndx-1], linija[ndx])
          i += 1
          #print("counter: ", i)
        #else:
          #print (" BAR JE: ", linija[ndx-2], linija[ndx-1], linija[ndx])
      #else:
        #print (" TIE JE: ", linija[ndx-1], linija[ndx])

  return(i)

def brojanjeSlogovaTekst(regexes, linija):
  i = 0
  for ndx, member in enumerate(linija):
    if not any(regex.match(member) for regex in regexes):
      i += 1
  return(i)

def spajanjeListe(lista):
  string = ""
  for ndx, member in enumerate(lista):
    string += member
    if ndx+1 < len(lista):
      string += " "
  return(string)
  
listaErrora = []

for key in rijecnik:
  for ndx, member in enumerate(lines):
    if key in lines[ndx]:
      linijaFraza = lines[ndx].split()
      #print ("Fraza")
      #print (linijaFraza)
      brojSlogovaFraza = (brojanjeSlogovaFraza(regexFraza, linijaFraza))
      for ndx2, member2 in enumerate(lines):
        if rijecnik[key] in lines[ndx2]:
          linijaTekst = lines[ndx2].split()
          navodniki = 0
          #print ("Tekst")
          #print (linijaTekst)
          brojSlogovaTekst = (brojanjeSlogovaTekst(regexTekst, linijaTekst))
          razlika = brojSlogovaFraza-brojSlogovaTekst
 #         print(razlika, linijaTekst)
          if razlika > 0:
            #treba dodati skip
            while razlika != 0:
              linijaTekst.insert(-1, "_")
              razlika -= 1
          elif razlika < 0:
            #treba spojiti elemente
            while razlika != 0:
              rec = ""
              slog1 = linijaTekst.pop(-2)
              slog2 = linijaTekst.pop(-2)
              if slog2 == "--":
                slog3 = linijaTekst.pop(-2)
                rec = slog3 + " " + slog2 + " " + slog1
              else:
                rec = slog2 + " " + slog1
              razlika +=1
              navodniki += 1
              linijaTekst.insert(-1, rec)
          if lines[ndx2] != linijaTekst:
            if navodniki:
              rec = linijaTekst.pop(-2)
              temp = "\"" + rec + "\""
              linijaTekst.insert(-1, temp)
            lines[ndx2] = "  " + spajanjeListe(linijaTekst) + "\n"
            listaErrora.append("Error @ line: " + str(ndx2))
#            print (linijaTekst)

for i in lines:
  sys.stdout.write(i)
listaErrora.sort()
for i in listaErrora:
  sys.stderr.write(i + "\n")
