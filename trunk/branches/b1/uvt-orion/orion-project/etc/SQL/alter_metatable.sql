update metatable set camp_vizual = null where camp_tabela like "%_id";
update metatable set camp_vizual = null where camp_tabela like "id_%";

update metatable set camp_vizual = 'Anul' where camp_vizual = 'data';
