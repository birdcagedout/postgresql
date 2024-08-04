-- drop table topic;

-- insert into topic (title, body)
--     values
--     ('Insert', 'Insert is ...'),
--     ('Select', 'Select is ...'),
--     ('Update', 'Update is ...'),
--     ('Delete', 'Delete is ...');

-- select * 
--     from topic
--     where id <> 1
--     order by id desc;


-- update topic
--     set title='Insert', body='Insert is ...'
--     where id = 1;

-- select * from topic order by id asc;


delete from topic where id = 4;

select * from topic;