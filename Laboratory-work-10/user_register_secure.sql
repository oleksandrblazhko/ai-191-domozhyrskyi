CREATE OR REPLACE FUNCTION user_register_secure (
    v_user_name varchar, 
        v_password varchar
)
        RETURNS INTEGER
AS $$
BEGIN
        IF NOT EXISTS ( SELECT FROM most_popular_letter_passes 
                                                WHERE value = v_password) THEN                          
                IF password_is_correct(v_password) THEN				
			INSERT INTO users (username,password) 
					VALUES (v_user_name, v_password);
			RETURN 1;
		ELSE
			RAISE NOTICE 'Password = % INCORRECT!', v_password;
			RETURN -1;
		END IF;
        ELSE 
                RAISE NOTICE 'Password = % is bad password', v_password;
                RETURN -1;                                             
        END IF;                                             
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION password_is_correct(password_text TEXT)
RETURNS BOOLEAN AS
$$
DECLARE
    num_digits INT;
    num_lower_chars INT;
    num_upper_chars INT;
    num_special_chars INT;
BEGIN
 
    SELECT
        count(*) INTO num_digits
        FROM REGEXP_MATCHES(password_text, '\d', 'g');

    SELECT
        count(*) INTO num_lower_chars
        FROM REGEXP_MATCHES(password_text, '[a-z]', 'g');

    SELECT
        count(*) INTO num_upper_chars
        FROM REGEXP_MATCHES(password_text, '[A-Z]', 'g');

    SELECT
        count(*) INTO num_special_chars
        FROM REGEXP_MATCHES(password_text, '[!@#$%^&*]', 'g');

 
    IF num_digits < 2 OR num_lower_chars < 2 OR num_upper_chars < 4 OR num_special_chars < 2 OR LENGTH(password_text) < 11  THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;
$$
LANGUAGE plpgsql;