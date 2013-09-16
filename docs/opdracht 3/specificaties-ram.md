Specificaties RAM
=================

Parameters:
  - aantal bits woord
  - aantal woorden

Randvoorwaarden:
  -Hij moet een woord kunnen inladen en ophalen binnen 1 klokslag
  -Hij moet meerdere woorden kunnen onthouden


Ingangen:
  - klok
  - enabled
  - commando (2 bits) (read/ write)
  - adresslines (log2(words) aantal bits)
  - reset (waarbij je het gehele geheugen wist)
  - ingang die opgeslagen moet worden

Uitgang:
	-(#bits) uitgang die opgeslagen waarde weergeeft
	- ready (hoog als data klaar staat
