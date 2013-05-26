#!/usr/bin/env python3
# A SCRIPT WHICH HELPS TO PUT A CERTAIN TEXT ON A MUSICAL PHRASE. HELPS WITH TRANSLATING THE LYRICS.
# USAGE: ./program filename.ly > new_filename.ly
# IT FITS THE LYRICS DEPENDING ON THE NUMBER OF MUSICAL SYLLABLES.
# IF THE NUMBER OF LYRICS SYLLABLES IS MORE THEN THE NUMBER OF MUSICAL SYLLABLES IT SQUEEZES IT UNDER A SINGLE ""
# ELSE IT PUTS _ AT THE EMPTY SPOTS.

import sys
import re

#OPEN AND READ FROM FILE
filename = sys.argv[1]
f = open(filename)
linesInFilename = f.readlines() #CREATE A LIST FROM LINES
f.close()

# A DICTIONARY FOR MATCHING THE PHRASES
simpleDict = {
"phrase01" : "text01",
"phrase02" : "text02",
"phrase03" : "text03",
"phrase04" : "text04",
"phrase05" : "text05",
"phrase06" : "text06",
"phrase07" : "text07",
"phrase08" : "text08",
"phrase09" : "text09",
"phrase10" : "text10",
"phrase11" : "text11",
"phrase12" : "text12",
"phrase13" : "text13",
"phrase14" : "text14",
"phrase15" : "text15",
"phrase16" : "text16",
"phrase17" : "text17",
"phrase18" : "text18",
"phrase19" : "text19",
"phrase20" : "text20"
}

regexMusic = [
    re.compile("c.*"),
    re.compile("d.*"),
    re.compile("e.*"),
    re.compile("f.*"),
    re.compile("g.*"),
    re.compile("a.*"),
    re.compile("b.*"),
    re.compile("h.*"),
    re.compile("\("),
    re.compile("\)")
    ]

regexText = [
  re.compile("--"),
  re.compile("\skip.*"),
  re.compile(".*text01"),
  re.compile(".*text02"),
  re.compile(".*text03"),
  re.compile(".*text04"),
  re.compile(".*text05"),
  re.compile(".*text06"),
  re.compile(".*text07"),
  re.compile(".*text08"),
  re.compile(".*text09"),
  re.compile(".*text10"),
  re.compile(".*text11"),
  re.compile(".*text12"),
  re.compile(".*text13"),
  re.compile(".*text14"),
  re.compile(".*text15"),
  re.compile(".*text16"),
  re.compile(".*text17"),
  re.compile(".*text18"),
  re.compile(".*text19"),
  re.compile(".*text20")
]

# FUNCTION which counts musical syllables based on regexMusic and returns the number
def countingMusicalSyllables(linija):
  counter = 0
  tie = 0
  for ndx, member in enumerate(linija):
    if any(regex.match(member) for regex in regexMusic):
      if linija[ndx] == "(": #checks if there is tie so no count
        tie = 1
      if tie == 1:
        if linija[ndx] == ")": #until this one
          tie = 0
      else:
        if linija[ndx-1] != "~":
          if (linija[ndx-1] != "|" or linija[ndx-2] != "~"):
            counter += 1
  return(counter)

# FUNCTION which counts textual syllables based on regexText and returns the number
def countingTextualSyllables(linija):
  counter = 0
  for ndx, member in enumerate(linija):
    if not any(regex.match(member) for regex in regexText):
      counter += 1
  return(counter)

#LOOKING FOR LINES WHICH HAVE %phrase* or %text* AS A COMMENT

for key in simpleDict: #goes through simpleDict keys and look for it in linesInFilename
  for ndx, member in enumerate(linesInFilename): #it checks which line has which index for editing afterwords
    if key in linesInFilename[ndx]: #if it finds a key in any of lines
      numberOfMusicalSyllables = (countingMusicalSyllables(linesInFilename[ndx].split()))
      for ndx2, member2 in enumerate(linesInFilename): #it goes second time through linesInFilename and searches for value which matches the key in simpleDict
        if simpleDict[key] in linesInFilename[ndx2]: #if it finds a value in any of lines
          lineWithMatchingValue = linesInFilename[ndx2].split() # defines the variable for further editing
          numberOfTextualSyllables = (countingTextualSyllables(lineWithMatchingValue))
          difference = numberOfMusicalSyllables - numberOfTextualSyllables
          if difference > 0: #if there is more musical syllables then textual
            while difference != 0:
              lineWithMatchingValue.insert(-1, "_") # put _ at the empty slots
              difference -= 1
          elif difference < 0: #if there is more textual syllables then musical
            while difference != 0:
              word = []
              word.insert(0, lineWithMatchingValue.pop(-2)) #pops the last syllable from the text phrase
              word.insert(0, lineWithMatchingValue.pop(-2)) #pops the last syllable from the text phrase
              if word[0] == "--": #checks if the second pop is a --
                word.pop(0) # remove the --
                word.insert(0, lineWithMatchingValue.pop(-2)) #pop another one
              difference += 1
              lineWithMatchingValue.insert(-1, "".join(word)) #add the "new" word
          if linesInFilename[ndx2] != lineWithMatchingValue: #if we have changed the line
            linesInFilename[ndx2] = (" ".join(lineWithMatchingValue) + "\n")

for i in linesInFilename:
  sys.stdout.write(i)
