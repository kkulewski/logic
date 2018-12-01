abstract sig Bool {}
one sig True extends Bool { }
one sig False extends Bool { }

abstract sig Plec { }
one sig Mezczyzna extends Plec { }
one sig Kobieta extends Plec { }

abstract sig PoraObiadu { }
one sig Dwunasta extends PoraObiadu { }
one sig Trzynasta extends PoraObiadu { }

abstract sig Stanowisko {
  osoba: Osoba,
  pora: PoraObiadu,
  nierozlacznyZ: set Stanowisko
}

one sig Ekspedient extends Stanowisko { }
one sig Kasjer extends Stanowisko { }
one sig Biurowy extends Stanowisko { }
one sig Administrator extends Stanowisko { }
one sig Kierownik extends Stanowisko { }

abstract sig Osoba {
  plec: Plec,
  kanastaZ: set Osoba,
  maSiostre: set Osoba,
  jeKanapki: Bool,
  jestWrogiem: set Osoba
}

one sig Allen extends Osoba { }
one sig Bennett extends Osoba { }
one sig Clark extends Osoba { }
one sig Davis extends Osoba { }
one sig Ewing extends Osoba { }


fact {

  // kasjer i administrator jadają lunch w godz. 11:30-12:30, pozostali godzinę później.
  Kasjer.pora = Dwunasta
  Administrator.pora = Dwunasta
  Ekspedient.pora = Trzynasta
  Biurowy.pora = Trzynasta
  Kierownik.pora = Trzynasta
  
  // panie Allen i Clark są siostrami.
  Allen.plec = Kobieta
  Clark.plec = Kobieta
  Allen.maSiostre = Clark
  Clark.maSiostre = Allen

  // Allen i Bennett przynoszą własne kanapki, a w przerwie na lunch grywają w kanastę.
  Allen.jeKanapki = True
  Bennett.jeKanapki = True
  Allen.kanastaZ = Bennett
  Bennett.kanastaZ = Allen

  // Davis i Ewing nie kontaktują się ze sobą od czasu, gdy Davis wrócił z lunchu wcześniej, zobaczył,
  // że Ewing przedwcześnie opuścił miejsce pracy i doniósł kierownikowi.
  Davis.plec = Mezczyzna
  Ewing.plec = Mezczyzna
  Davis.jestWrogiem = Ewing
  Ewing.jestWrogiem = Davis
  Kierownik.osoba != Davis
  Kierownik.osoba != Ewing

  // kasjer i pracownik biurowy pracują razem, nazywani są przez kolegów "starymi, nierozłącznymi kawalerami".
  Kasjer.nierozlacznyZ = Biurowy
  Biurowy.nierozlacznyZ = Kasjer
  Kasjer.osoba.plec = Mezczyzna
  Biurowy.osoba.plec = Mezczyzna

  
  // DODATKOWE 'zdroworozsadkowe' zasady
  // kazde stanowisko jest obsadzone
  all st: Stanowisko | one o: Osoba | st.osoba = o
  // kazda osoba ma plec
  all os: Osoba | one p: Plec | os.plec = p
  // kazda osoba je kanapki lub nie
  all os: Osoba | one b: Bool | os.jeKanapki = b
  // nikt nie jest nierozlaczny z samym soba
  all s: Stanowisko | s not in s.nierozlacznyZ
  // nikt nie jest swoja siostra
  all os: Osoba | os not in os.maSiostre
  // siostra nie moze byc mezczyzna
  all os: Osoba | Mezczyzna not in os.maSiostre.plec
  // kazde stanowisko to jedna osoba
  all disj x, y: Stanowisko | x.osoba != y.osoba

}

pred show { }
run show for 5 Stanowisko, 5 Osoba, 2 Bool
