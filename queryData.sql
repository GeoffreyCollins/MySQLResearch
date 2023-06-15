use destiny2;

show tables;

select * from npc;

select * from guardian;

select * from npc;

select * from subclass;

select * from weapon;

select * from weapon_type;

select g.guardian_id, s.subclass_name, e.element_name
from guardian g
	join subclass s
		ON g.guardian_id = s.guardian_id
    join element e
		on s.element_id = e.element_id
where g.guardian_id = 2;