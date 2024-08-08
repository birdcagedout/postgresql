---------------------------------------------------
-- 이미 존재하는 테이블의 속성을 변경하기
-- PRIMARY KEY 관련
---------------------------------------------------

-- PRIMARY KEY 설정1 (원래)
ALTER TABLE person2 
ADD CONSTRAINT person2_pkey PRIMARY KEY (id);

-- PRIMARY KEY 설정2 (약칭) <-- 더 많이 사용하는 방법
ALTER TABLE person2
ADD PRIMARY KEY(id);

-- PRIMARY KEY 삭제 (제약조건이름=person_pkey)
ALTER TABLE person2
DROP CONSTRAINT person2_pkey;




---------------------------------------------------
-- 이미 존재하는 테이블의 속성을 변경하기
-- PRIMARY KEY에 BIGSERIAL로 자동 INCREMENT되도록 설정
---------------------------------------------------

-- id 열을 BIGINT로 타입 변경
ALTER TABLE person2 
ALTER COLUMN id TYPE BIGINT;
-- person2_id_seq라는 시퀀스를 만들고
CREATE SEQUENCE person2_id_seq;
-- id 열의 기본값을 person2_id_seq 시퀀스의 nextval로 설정
ALTER TABLE person2 
ALTER COLUMN id SET DEFAULT nextval('person2_id_seq');


---------------------------------------------------
-- 제약조건이름은 하나의 DB에서 유일해야 한다.
-- 테이블이 달라도 같은 이름의 제약조건을 중복해서 생성할 수 없다.
-- [결론] 제약조건이름은 자동으로 생성하게 냅둬라.
---------------------------------------------------


-- 제약조건 생성1: 제약조건이름=personal_email_key
ALTER TABLE person2
ADD CONSTRAINT personal2_email_key UNIQUE (email);

-- 제약조건 생성2: 이름 안주면 자동으로 생성한다 <-- 더 많이 사용하는 방법
ALTER TABLE person2
ADD UNIQUE (열이름);

-- 제약조건 지우기: 제약조건이름(=person_email_key)은 \d person으로 확인
ALTER TABLE person2
DROP CONSTRAINT person2_email_key;



-- NOT NULL 설정 (이것도 제약조건이긴 하지만, column의 속성을 지정하는 거라 문법이 약간 다르다)
ALTER TABLE person2
ALTER COLUMN first_name SET NOT NULL;

-- NOT NULL 삭제
ALTER TABLE person2
ALTER COLUMN first_name DROP NOT NULL;



