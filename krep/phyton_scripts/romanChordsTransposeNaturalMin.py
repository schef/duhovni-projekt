#!/usr/bin/python

#trenutno je skripta napisana za prirodni mol

import sys

#User input Variable
#harme = "c1 d:dim es2:7 f2:m g as b:dim"
harme = input("Upisi harme: ")
harme = harme + " "
#stepen = 9
stepen = int(input("Upisi stepen, racunaj u gore I=a-mol: "))

#Konstantne Variable tj. liste
lista_svih_nota = ["his", "cis", "des", "dis", "es", "fes", "eis", "fis", "ges", "gis", "as", "ais", "ces", "maj", "min", "dim", "aug", "c", "d", "e", "f", "g", "a", "b", "h", "m"]
lista_svih_zamjena = ["101", "102", "102", "104", "104", "105", "106", "107", "107", "109", "109", "111", "112", "201", "202", "203", "204", "101", "103", "105", "106", "108", "110", "111", "112", "202"]
lista_nota = ["c", "cis", "d", "dis", "e", "f", "ges", "g", "gis", "a", "b", "h"]
lista_zamjena = ["101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112"]
lista_akordi = ["201", "202", "203", "204", "maj", "min", "dim", "aug"]

#Zamjena svih nota i akorda u sifre
for i in range(26):
  harme = harme.replace(lista_svih_nota[i], lista_svih_zamjena[i])

#Transponiranje
for i in range(stepen):
  shift = lista_zamjena.pop(11)
  lista_zamjena.insert(0, shift)

#Zamjena sifri u note
for i in range(12):
    harme = harme.replace(lista_zamjena[i], lista_nota[i])

#Dirty hack

#I problem
harme = harme.replace("a ", "a:8 ")
harme = harme.replace("a1 ", "a1:8 ")
harme = harme.replace("a2 ", "a2:8 ")
harme = harme.replace("a4 ", "a4:8 ")
harme = harme.replace("a:202", "a")
harme = harme.replace("a1:202", "a1")
harme = harme.replace("a2:202", "a2")
harme = harme.replace("a4:202", "a4")
#II problem
harme = harme.replace("h ", "h:8 ")
harme = harme.replace("h1 ", "h1:8 ")
harme = harme.replace("h2 ", "h2:8 ")
harme = harme.replace("h4 ", "h4:8 ")
harme = harme.replace("h:203", "h")
harme = harme.replace("h1:203", "h1")
harme = harme.replace("h2:203", "h2")
harme = harme.replace("h4:203", "h4")
#III
harme = harme.replace("c:201", "c")
harme = harme.replace("c1:201", "c1")
harme = harme.replace("c2:201", "c2")
harme = harme.replace("c4:201", "c4")
#IV problem
harme = harme.replace("d ", "d:8 ")
harme = harme.replace("d1 ", "d1:8 ")
harme = harme.replace("d2 ", "d2:8 ")
harme = harme.replace("d4 ", "d4:8 ")
harme = harme.replace("d:202", "d")
harme = harme.replace("d1:202", "d1")
harme = harme.replace("d2:202", "d2")
harme = harme.replace("d4:202", "d4")
#V problem
harme = harme.replace("e ", "e:8 ")
harme = harme.replace("e1 ", "e1:8 ")
harme = harme.replace("e2 ", "e2:8 ")
harme = harme.replace("e4 ", "e4:8 ")
harme = harme.replace("e:202", "e")
harme = harme.replace("e1:202", "e1")
harme = harme.replace("e2:202", "e2")
harme = harme.replace("e4:202", "e4")
#VI
harme = harme.replace("f:201", "f")
harme = harme.replace("f1:201", "f1")
harme = harme.replace("f2:201", "f2")
harme = harme.replace("f4:201", "f4")
#VII
harme = harme.replace("g:201", "g")
harme = harme.replace("g1:201", "g1")
harme = harme.replace("g2:201", "g2")
harme = harme.replace("g4:201", "g4")

#Zamjena sifri u akorde
for i in range(4):
    harme = harme.replace(lista_akordi[i], lista_akordi[i+4])

print (harme)
