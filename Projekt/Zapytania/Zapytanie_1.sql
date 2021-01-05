CREATE VIEW Zapytanie_1 AS
SELECT klient.Imie, klient.Nazwisko, zamowienie.id_zamowienia, ksiazka.Tytul, zamowienie.Data_zakupu, zamowienie.Metoda_platnosci
FROM ((zamowienie 
INNER JOIN klient ON zamowienie.id_klienta=klient.id_klienta)
INNER JOIN ksiazka ON zamowienie.id_ksiazka=ksiazka.id_ksiazka)
WHERE ksiazka.id_ksiazka = 1;

-- Dane osoby która zamówiła książke od numerze id=1 