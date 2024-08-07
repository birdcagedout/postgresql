SELECT * from person;

-- PRIMARY KEY 삭제 (인덱스 이름을 먼저 확인할 것)
ALTER TABLE person
    DROP CONSTRAINT person_pkey;

-- PRIMARY KEY 설정
ALTER TABLE person
    ADD PRIMARY KEY(id);



    

ALTER TABLE person
ADD CONSTRAINT unique_email UNIQUE (email);




