CREATE VIEW Zapytanie_10 AS
SELECT gry_planszowe_i_karciane.Nazwa, gry_planszowe_i_karciane.Cena_PLN
FROM gry_planszowe_i_karciane 
WHERE gry_planszowe_i_karciane.Cena_PLN>(SELECT AVG(gry_planszowe_i_karciane.Cena_PLN) FROM gry_planszowe_i_karciane);

-- Wybiera gry planszowe które mają cene większą niż średnia wyszstkich gier planszowych łącznie.