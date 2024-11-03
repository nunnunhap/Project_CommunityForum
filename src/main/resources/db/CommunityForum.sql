/*
    �ۼ��� : ����
    ������ : 2024-10-30
    ������Ʈ�� : �Խ��� ������Ʈ
*/

-- �ѱ۵����� ũ�� Ȯ��
SELECT
    LENGTHB('��')
FROM
    DUAL;
    
    
    
    
    


-- ȸ�� ���̺�
CREATE TABLE MBSP_TBL(
        MBSP_ID             VARCHAR2(15),
        MBSP_NAME           VARCHAR2(30)           NOT NULL,
        MBSP_EMAIL          VARCHAR2(50)           NOT NULL,
        MBSP_PASSWORD       CHAR(60)               NOT NULL,        -- ��й�ȣ ��ȣȭ ó��.
        MBSP_NICK           VARCHAR2(30)           NOT NULL UNIQUE, -- �г���
        MBSP_LASTLOGIN      DATE                   NULL,
        MBSP_CREATEDATE     DATE DEFAULT SYSDATE   NOT NULL,
        MBSP_UPDATEDATE     DATE DEFAULT SYSDATE   NOT NULL,
        SNS_LOGIN_TYPE      VARCHAR2(10), -- SNS �α��� Ÿ��
        
        CONSTRAINT PK_MBSP_ID PRIMARY KEY (MBSP_ID)
);

-- SNS���̺� �߰�
CREATE TABLE SNS_USER_TBL (
    SNS_TYPE    VARCHAR2(10)    NOT NULL,
    ID          VARCHAR2(100),
    NAME        VARCHAR2(50)    NOT NULL,
    EMAIL       VARCHAR2(100)   NOT NULL,
    
    CONSTRAINT PK_SNS_ID PRIMARY KEY (ID)
);



-- ���� ���̺�
CREATE TABLE QUESTION (
    QUESTION_IDX NUMBER,       -- ���� ���� ID
    TITLE VARCHAR2(100) NOT NULL,         -- ���� ����
    CONTENT VARCHAR2(4000) NOT NULL,      -- ���� ����
    WRITER VARCHAR2(50) NOT NULL,         -- �ۼ���
    CREATED_AT TIMESTAMP DEFAULT SYSDATE, -- ���� ����
    UPDATED_AT TIMESTAMP,                 -- ���� ����
    
    CONSTRAINT PK_QUESTION_IDX PRIMARY KEY (QUESTION_IDX)
);

-- �亯 ���̺�(������)
CREATE TABLE ANSWER (
    ANSWER_IDX NUMBER,             -- �亯 ���� ID
    QUESTION_IDX NUMBER NOT NULL,              -- ���� ID
    PARENT_ANSWER_IDX NUMBER,                  -- �θ� �亯 ID (���� ����)
    CONTENT VARCHAR2(4000) NOT NULL,          -- �亯 ����
    WRITER VARCHAR2(50) NOT NULL,             -- �ۼ���
    CREATED_AT TIMESTAMP DEFAULT SYSDATE,     -- ���� ����
    UPDATED_AT TIMESTAMP,                     -- ���� ����
    
    CONSTRAINT PK_ANSWER_IDX PRIMARY KEY (ANSWER_IDX)
);

-- ������ ����
CREATE SEQUENCE SEQ_QUESTION_IDX;
CREATE SEQUENCE SEQ_ANSWER_IDX;


COMMIT;



