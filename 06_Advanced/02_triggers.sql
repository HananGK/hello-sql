CREATE TRIGGER tg_email
BEFORE/AFTER INSERT/UPDATE/DELETE
ON users

delimiter |
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email<>NEW.email THEN
		INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;
|
delimiter ; 

UPDATE users SET email = 'hanangabarron@gmail.com' WHERE user_id = 1;

DROP TRIGGER tg_email;
