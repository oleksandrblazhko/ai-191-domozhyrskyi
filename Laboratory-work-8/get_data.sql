CREATE OR REPLACE FUNCTION get_data(post_name varchar)

RETURNS TABLE(name varchar, post varchar)

AS $$

declare
	str varchar;
begin
	str:= 'SELECT name, post FROM teacher WHERE post = ''' || post_name || '''';
	raise notice 'Query=%', str;
	return query execute str;
end;
$$ LANGUAGE plpgsql;