create or replace function get_data(username varchar, v_token varchar)
returns table(t_id integer, name varchar, post varchar)
as $$

declare
	str varchar;
begin
    call verify_user(username, v_token);
	return query execute 'SELECT t_id, name, post FROM teacher';
end;
$$ LANGUAGE plpgsql;

create or replace procedure verify_user(
    v_username varchar,
	v_token varchar
)
as $$
begin
	if not exists (select from users u, sso_tokens t
					where lower(u.username) = v_username and t.token = v_token) then
		RAISE EXCEPTION 'Auth Error';
	end if;
end;
$$ language plpgsql;