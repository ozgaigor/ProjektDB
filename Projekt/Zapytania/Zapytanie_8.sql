CREATE VIEW Zapytanie_8 AS
SELECT id_ksiazka, Autor, Wydawnictwo, Tytul, Seria, MAX(Strony), Rok_wydania, Gatunek, Cena_PLN
FROM ksiazka
GROUP BY Rok_wydania
ORDER BY Rok_wydania;

-- Wyświetla książki które posiadają nawięcej stron które są wydane na dany rok. 