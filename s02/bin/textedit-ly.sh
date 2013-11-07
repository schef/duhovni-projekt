https://github.com/markk/textedit-ly
->github stranica od tipa

INSTALACIJA
->kak piše na njegovoj stranici i onda napraviti zamjene

ZAMJENE
->u textedit.py:
		->staviti python2 na pocetku filea
		->zamjeniti editor gvim u vim
->instalirati gvim
->u .lytextedit.cfg zamjeniti:
		->editor u vim
		->command u command = --remote-send +:{line}:normal0{start}l<CR> "{file}"         

->pokrenuti vim sa: "vim --servername VIM [file]"
