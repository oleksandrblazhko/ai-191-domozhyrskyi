CREATE OR REPLACE FUNCTION change_data (attr_1 varchar, attr_2 varchar)
RETURNS varchar
as $$
declare 
	str varchar;
begin
	str:= 'UPDATE teacher SET name = ''' || attr_2 || ''' WHERE name = ''' || attr_1 ||'''';
	raise notice 'Query=%', str;
	execute str;
	return 'Name updated';
end;
$$ LANGUAGE plpgsql;