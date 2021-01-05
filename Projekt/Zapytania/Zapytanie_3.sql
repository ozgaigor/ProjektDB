CREATE VIEW Zapytanie_3 AS
SELECT klient.Imie, klient.Nazwisko, zamowienie.id_zamowienia
FROM klient LEFT JOIN zamowienie ON zamowienie.id_klienta=klient.id_klienta;

-- Wyświetla wszystkie osoby i ich zamówienia, przy osobach bez zamówienia pokazuje wartość NULL.