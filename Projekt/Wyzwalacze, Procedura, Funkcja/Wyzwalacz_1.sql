DELIMITER $$
CREATE TRIGGER Nowy_klient
BEFORE INSERT
ON klient FOR EACH ROW
BEGIN
    IF NEW.E_mail IS NULL THEN
        SET new.E_mail='Nie posiada';
    END IF;
END$$
DELIMITER ;

-- Podczas dodawania nowego klienta, klientowi który nie podał E-maila zamiast uzupełniać wartość NULL wpisauje wartość 'Nie Posiada'.