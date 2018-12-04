abstract sig Stanowisko { }

one sig Zaopatrzeniowiec extends Stanowisko { }
one sig Kasjer extends Stanowisko { }
one sig Ekspedient extends Stanowisko { }
one sig Pietrowy extends Stanowisko { }
one sig Menedzer extends Stanowisko { }

abstract sig Osoba {
  jest: Stanowisko
}

one sig Ames extends Osoba { }
one sig Brown extends Osoba { }
one sig Conroy extends Osoba { }
one sig Davis extends Osoba { }
one sig Evans extends Osoba { }

fact {
	// 1. Kasjer i Menedżer w czasach szkolnych mieszkali w jednym pokoju w internacie.
	// 2. Zaopatrzeniowiec jest starym kawalerem.
	// 3. Pana Evansa i pannę Ames łączą jedynie stosunki służbowe.
	// 4. Pani Conroy była bardzo rozczarowana kiedy mąż powiedział jej, 
	// że Menedżer nie wyraził zgody na podwyżkę dla niego.
	// 5. Pan Davis będzie świadkiem na ślubie osób pracujących jako Kasjer i Ekspedient
	// (zakładamy tutaj „tradycyjny" model rodziny).

	// kazde stanowisko zajmuje jedna osoba
	all disj x, y: Osoba | x.jest != y.jest

	// 6. Pan Conroy
	// z 2. => nie jest zaopatrzeniowcem (bo ma zone)
	// z 4. => nie jest menedzerem (bo menedzer nie dal mu podwyzki)
	// z 5. => nie jest kasjerem ani ekspedientem (bo ma juz zone)
	// => jest pietrowym
	Conroy.jest = Pietrowy

	// 7. Pan Davis
	// z 5. => nie jest kasjerem ani ekspedientem (bo jest ich swiadkiem)
	// z 6. => nie jest pietrowym (bo jest nim Conroy)
	// => moze byc zaopatrzeniowcem albo menedzerem
	Davis.jest in (Zaopatrzeniowiec + Menedzer)

	// 8. Pan Evans i Panna Ames
	// jesli Pani Ames jest kasjerem => Pan Evans nie jest ekspedientem (5.) ani menedzerem (1.)
	Ames.jest in Kasjer => Evans.jest not in (Ekspedient + Menedzer)
	// jesli Pan Evans jest kasjerem => Pani Ames nie jest ekspedientem (5.) ani menedzerem (1.)
	Evans.jest in Kasjer => Ames.jest not in (Ekspedient + Menedzer)
	// jesli Pani Ames jest ekspedientem => Pan Evans nie jest kasjerem (5.)
	Ames.jest in Ekspedient => Evans.jest not in Kasjer
	// jesli Pan Evans jest ekspedientem => Pani Ames nie jest kasjerem (5.)
	Evans.jest in Ekspedient => Ames.jest not in Kasjer

	// 9. Ames i Brown
	// nie moga byc ekspedientem i kasjerem (5.)
 	Brown.jest in Kasjer => Ames.jest not in Ekspedient
	// nie moga byc kasjerem i ekspedientem (5.)
	Brown.jest in Ekspedient => Ames.jest not in Kasjer

	// 10. Kasjer i menedzer mieszkali w jednym pokoju => ta sama plec
	// wiec jesli Ames lub Brown jest kasjerem, to drugie jest Menedzerem
	Ames.jest in (Kasjer + Menedzer) => Brown.jest in (Kasjer + Menedzer)
	Brown.jest in (Kasjer + Menedzer) => Ames.jest in (Kasjer + Menedzer)

	// 11. Zaopatrzeniowiec to stary kawalek => mezczyzna
	Ames.jest not in Zaopatrzeniowiec
	Brown.jest not in Zaopatrzeniowiec
}

pred show { }
run show
