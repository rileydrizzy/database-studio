create table info
(
    id serial primary key,
    name varchar(60),
    address text,
    gender char(1),
    physique jsonb
);

insert into info (name, address, gender, physique) VALUES
('Stephen Adubi', 'RM105, School of Science and Technology, Pan-Atlantic University, Ibeju-Lekki, Lagos.',
 'M', '{"height": 176, "weight": 62}'),

('Akin Ajala', 'Block 10, Icing Estate, Ilupeju, Lagos.',
 'M', '{"height": 188, "weight": 81}'),

('Sharon Ukwu', 'Block 18, Icing Estate, Ilupeju, Lagos.',
 'F', '{"height": 177, "weight": 79}');