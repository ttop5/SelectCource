mysql -u'root' -p'passwd' <<EOF

DROP DATABASE IF EXISTS student_manage;
CREATE DATABASE student_manage DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE student_manage;

CREATE TABLE user(
id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
school_num int(20) NOT NULL,
name varchar(50) NOT NULL,
sex varchar(10),
grade varchar(100),
school varchar(100),
major varchar(100),
class varchar(100),
qq varchar(20),
phone varchar(20),
email varchar(60) NOT NULL UNIQUE,
password varchar(120) NOT NULL,
adress varchar(200),
role int(2) NOT NULL DEFAULT '2' 
)CHARSET=utf8;

INSERT INTO user VALUES ('', '1234567890', 'admin', '', '', '', '', '', '', '', 'admin@qq.com', 'passwd', '', '0'); 
INSERT INTO user VALUES ('', '1234567', 'teacher', '女', '', '机械工程学院', '', '', '', '', 'teacher@qq.com', 'passwd', '', '1'); 
INSERT INTO user VALUES ('', '13110581072', 'ttop5', '男', '2013', '计算机科学与技术学院', '计算机科学与技术', '计科1302', '1427154738', '18753377101', 'ttop5@qq.com', 'passwd', '云南省昆明市石林县', '2');

CREATE TABLE notes(
id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
title varchar(50) NOT NULL,
time date NOT NULL,
description varchar(1000) NOT NULL
)CHARSET=utf8;

CREATE TABLE cource(
id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
student_id int(11) NOT NULL,
cource varchar(20) NOT NULL,
teacher_id int(11) NOT NULL,
CONSTRAINT cource_student FOREIGN KEY (student_id) REFERENCES user(id),
CONSTRAINT cource_teacher FOREIGN KEY (teacher_id) REFERENCES user(id)
)CHARSET=utf8;

CREATE TABLE score(
id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_id int(11) NOT NULL, 
cource_id int(11) NOT NULL, 
score varchar(5) NOT NULL,
CONSTRAINT score_user FOREIGN KEY (user_id) REFERENCES user(id),
CONSTRAINT score_cource FOREIGN KEY (cource_id) REFERENCES cource(id)
)CHARSET=utf8;

EOF
