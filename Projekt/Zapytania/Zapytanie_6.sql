CREATE VIEW Zapytanie_6 AS
SELECT SUM(zamowienie.Cena_PLN) AS "Suma wydanych pieniedzy przez klientow"
FROM zamowienie;

-- Suma wydanych pieniędzy przez klientów.