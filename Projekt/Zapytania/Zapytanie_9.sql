CREATE VIEW Zapytanie_9 AS
SELECT klient.Imie, klient.Nazwisko, zamowienie.id_zamowienia, gry_komputerowe.Tytul, gry_komputerowe.Rok_premiery 
FROM ((zamowienie
INNER JOIN klient ON zamowienie.id_klienta=klient.id_klienta)
INNER JOIN gry_komputerowe ON zamowienie.id_gryPC=gry_komputerowe.id_gryPC)
WHERE (Tytul LIKE 'T%' OR Tytul LIKE '%t') AND Rok_premiery BETWEEN 2015 AND 2020
ORDER BY klient.Imie;

-- Wyświetla zamówienia w których pojawiły gry komputerowe które zaczynają się na litere "T" albo kończą na litere "t" ale tylko te pomiędzy 2015 a 2020 rokiem wydania.