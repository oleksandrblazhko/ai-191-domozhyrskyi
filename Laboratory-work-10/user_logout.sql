create or replace function user_logout(
    v_username varchar
)
	returns integer
as $$
declare
	user_name varchar;
begin
	select username into user_name
	from users
	where username = v_username;
	if found then
		delete from sso_tokens where username = v_username;
		return 1;
	else
		return 0;
	end if;
end;
$$ language plpgsql;