DELIMITER $$
CREATE DEFINER='root'@'localhost' PROCEDURE Rodzaj_rozgrywki (Rodzaj_rozgrywki varchar(25))
BEGIN
SELECT * FROM gry_planszowe_i_karciane
WHERE Rywalizacja_Wspolpraca=Rodzaj_rozgrywki;
END$$
DELIMITER ;

-- Wpisujemy Rywalizacja albo Wspolpraca i wyświetla wszystkie produkty gdzie zgadza się rodzaj rozgrywki.