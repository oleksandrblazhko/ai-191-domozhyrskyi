CREATE OR REPLACE FUNCTION change_data_secure (attr_1 varchar, attr_2 varchar)
RETURNS varchar
as $$
declare 
	str varchar;
begin
	str:= 'UPDATE teacher SET name = $2 WHERE name = $1';
	raise notice 'Query=%', str;
	execute str using attr_1, attr_2;
	return 'Name updated';
end;
$$ LANGUAGE plpgsql;