CREATE VIEW Zapytanie_2 AS
SELECT klient.Imie, klient.Nazwisko, zamowienie.id_zamowienia, gry_komputerowe.Tytul, 
		zamowienie.Data_zakupu, zamowienie.Metoda_platnosci, zamowienie.Cena_PLN
FROM ((zamowienie 
INNER JOIN klient ON zamowienie.id_klienta=klient.id_klienta)
INNER JOIN gry_komputerowe ON zamowienie.id_gryPC=gry_komputerowe.id_gryPC)
WHERE gry_komputerowe.id_gryPC IS NOT NULL;

-- Wyszukiwanie osób które posiadają w zamówieniu gre komputerową.