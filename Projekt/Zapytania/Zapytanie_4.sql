CREATE VIEW Zapytanie_4 AS
SELECT zamowienie.Metoda_platnosci, COUNT(zamowienie.id_zamowienia) AS Ilosc_dokonanych_transakcji
FROM zamowienie
GROUP BY zamowienie.Metoda_platnosci;

-- Liczy ile dokonano płatności gotówką a ile za pomocą karty