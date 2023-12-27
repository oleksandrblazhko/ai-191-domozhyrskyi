create or replace function user_register(username varchar, password varchar) returns integer as $$
begin
    if not exists (select * from most_popular_letter_passes where value = password) then
        insert into users (username, password) values (username, password);
        return 1;
    else
        return 0;
    end if;
end;
$$ LANGUAGE plpgsql;