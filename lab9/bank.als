abstract sig Zarobki { }
one sig Duzo extends Zarobki { }
one sig Srednio extends Zarobki { }
one sig Malo extends Zarobki { }

abstract sig Stanowisko {
  zarabia: Zarobki
}

one sig Kasjer extends Stanowisko { }
one sig Menedzer extends Stanowisko { }
one sig Straznik extends Stanowisko { }

abstract sig Osoba {
  jest: Stanowisko
}

one sig Brown extends Osoba { }
one sig Jones extends Osoba { }
one sig Smith extends Osoba { }

fact {

  // 0. kazde osoba to jedno stanowisko
  all disj x, y: Osoba | x.jest != y.jest

  // 0. kazde stanowisko ma inne zarobki
  all disj x, y: Stanowisko | x.zarabia != y.zarabia

  // 1. straznik zarabia najmniej
  Straznik.zarabia in (Malo)

  // 2. ktos zarabia wiecej niz menedzer
  // (wniosek: menedzer ma srednie zarobki)
  Menedzer.zarabia in (Malo + Srednio)

  // 3. z punktu 1 => kasjer nie zarabia najmniej
  // (wniosek: kasjer zarabia duzo)
  Kasjer.zarabia in (Srednio + Duzo)

  // 4. Smith zarabia wiecej niz menedzer
  // (wniosek: ma wysokie zarobki => jest kasjerem)
  Smith.jest.zarabia in (Duzo)

  // 5. Brown nie jedynakiem => nie jest straznikiem
  // (wniosek: straznikiem musi byc Jones, bo Smith tez nie jest straznikiem z punktu 4.)
  Brown.jest not in (Straznik)

}

pred show { }
run show
