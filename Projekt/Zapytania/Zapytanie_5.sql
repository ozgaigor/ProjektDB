CREATE VIEW Zapytanie_5 AS
SELECT zamowienie.Metoda_platnosci, AVG(zamowienie.Cena_PLN) AS Srednia_cena
FROM zamowienie
GROUP BY zamowienie.Metoda_platnosci
ORDER BY zamowienie.Metoda_platnosci;

-- Średnia cena za płatność.