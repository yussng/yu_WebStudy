package com.sist.vo;
/*
 *  CREATE TABLE project_replyBoard(
    no NUMBER,
    id VARCHAR2(20),
    name VARCHAR2(51) CONSTRAINT pr_name_nn NOT NULL,
    subject VARCHAR2(1000) CONSTRAINT pr_subject_nn NOT NULL,
    content CLOB CONSTRAINT pr_content_nn NOT NULL,
    pwd VARCHAR2(10) CONSTRAINT pr_pwd_nn NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    hit NUMBER DEFAULT 0,
    group_id NUMBER DEFAULT 0,
    group_step NUMBER DEFAULT 0,
    group_tab NUMBER DEFAULT 0,
    CONSTRAINT pr_no_pk PRIMARY KEY(no),
    CONSTRAINT pr_id_fk FOREIGN KEY(id)
    REFERENCES project_member(id)
);
 */
public class ReplyBoardVO {

}
