CREATE OR REPLACE FUNCTION user_login(
    v_username varchar,
    v_password varchar
)
RETURNS VARCHAR
AS $$
DECLARE
    v_token VARCHAR;
BEGIN
    IF EXISTS (
        SELECT 1
        FROM users
        WHERE username = v_username AND password = v_password
    ) THEN
        SELECT md5(inet_client_addr()::varchar || inet_client_port() ||
            pg_backend_pid()) INTO v_token;

        INSERT INTO sso_tokens (username, token)
        VALUES (v_username, v_token);

        RETURN v_token;
    ELSE
        RETURN '';
    END IF;
END;
$$ LANGUAGE plpgsql;