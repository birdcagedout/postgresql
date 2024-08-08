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


ALTER TABLE 테이블이름
ADD CONSTRAINT 제약조건이름 제약종류 (적용할 열);

ALTER TABLE 테이블이름
ADD 제약종류 (적용할 열);


ALTER TABLE 테이블이름
DROP CONSTRAINT 제약조건이름;

ALTER TABLE 테이블이름
ALTER COLUMN 열이름 SET NOT NULL;

ALTER TABLE 테이블이름
ALTER COLUMN 열이름 DROP NOT NULL;