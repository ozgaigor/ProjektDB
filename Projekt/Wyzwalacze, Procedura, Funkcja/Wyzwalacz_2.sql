DELIMITER $$
CREATE TRIGGER Nowa_ksiazka
BEFORE INSERT
ON ksiazka FOR EACH ROW
BEGIN
    IF NEW.Seria IS NULL THEN
        SET new.Seria='Brak';
    END IF;
END$$
DELIMITER ;

-- Podczas dodawania książki, nie podawając nazwy serii automatycznie ustawi się ona na wartość 'Brak' zamiast NULL.