/*
    작성자 : 유영
    시작일 : 2024-10-30
    프로젝트명 : 게시판 프로젝트
*/

-- 한글데이터 크기 확인
SELECT
    LENGTHB('영')
FROM
    DUAL;
    
    
    
    
    


-- 회원 테이블
CREATE TABLE MBSP_TBL(
        MBSP_ID             VARCHAR2(15),
        MBSP_NAME           VARCHAR2(30)           NOT NULL,
        MBSP_EMAIL          VARCHAR2(50)           NOT NULL,
        MBSP_PASSWORD       CHAR(60)               NOT NULL,        -- 비밀번호 암호화 처리.
        MBSP_NICK           VARCHAR2(30)           NOT NULL UNIQUE, -- 닉네임
        MBSP_LASTLOGIN      DATE                   NULL,
        MBSP_CREATEDATE     DATE DEFAULT SYSDATE   NOT NULL,
        MBSP_UPDATEDATE     DATE DEFAULT SYSDATE   NOT NULL,
        SNS_LOGIN_TYPE      VARCHAR2(10), -- SNS 로그인 타입
        
        CONSTRAINT PK_MBSP_ID PRIMARY KEY (MBSP_ID)
);

-- SNS테이블 추가
CREATE TABLE SNS_USER_TBL (
    SNS_TYPE    VARCHAR2(10)    NOT NULL,
    ID          VARCHAR2(100),
    NAME        VARCHAR2(50)    NOT NULL,
    EMAIL       VARCHAR2(100)   NOT NULL,
    
    CONSTRAINT PK_SNS_ID PRIMARY KEY (ID)
);



-- 질문 테이블
CREATE TABLE QUESTION (
    QUESTION_IDX NUMBER,       -- 질문 고유 ID
    TITLE VARCHAR2(100) NOT NULL,         -- 질문 제목
    CONTENT VARCHAR2(4000) NOT NULL,      -- 질문 내용
    WRITER VARCHAR2(50) NOT NULL,         -- 작성자
    CREATED_AT TIMESTAMP DEFAULT SYSDATE, -- 생성 일자
    UPDATED_AT TIMESTAMP,                 -- 수정 일자
    
    CONSTRAINT PK_QUESTION_IDX PRIMARY KEY (QUESTION_IDX)
);

-- 답변 테이블(계층형)
CREATE TABLE ANSWER (
    ANSWER_IDX NUMBER,             -- 답변 고유 ID
    QUESTION_IDX NUMBER NOT NULL,              -- 질문 ID
    PARENT_ANSWER_IDX NUMBER,                  -- 부모 답변 ID (계층 구조)
    CONTENT VARCHAR2(4000) NOT NULL,          -- 답변 내용
    WRITER VARCHAR2(50) NOT NULL,             -- 작성자
    CREATED_AT TIMESTAMP DEFAULT SYSDATE,     -- 생성 일자
    UPDATED_AT TIMESTAMP,                     -- 수정 일자
    
    CONSTRAINT PK_ANSWER_IDX PRIMARY KEY (ANSWER_IDX)
);

-- 시퀀스 생성
CREATE SEQUENCE SEQ_QUESTION_IDX;
CREATE SEQUENCE SEQ_ANSWER_IDX;


COMMIT;



