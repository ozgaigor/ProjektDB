CREATE VIEW Zapytanie_7 AS
SELECT zamowienie.id_zamowienia, klient.Imie, klient.Nazwisko, zamowienie.Data_zakupu
FROM zamowienie INNER JOIN klient ON klient.id_klienta=zamowienie.id_klienta
WHERE (zamowienie.Data_zakupu BETWEEN '2019-01-01' AND '2019-12-31') OR (zamowienie.Data_zakupu BETWEEN '2021-01-01' AND '2021-12-31')
GROUP BY zamowienie.id_zamowienia;

-- Wybiera zamówienia dokonane w 2019 i 2021 roku. (Pomija 2020.)