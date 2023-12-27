CREATE OR REPLACE FUNCTION get_data_secure(post_name varchar)

RETURNS TABLE(t_id integer, name varchar, post varchar, spot_conf integer)

AS $$

declare
	str varchar;
begin
	str:= 'SELECT * FROM teacher WHERE post = $1';
	raise notice 'Query = %', str;
	return query execute str using post_name;
end;
$$ LANGUAGE plpgsql;