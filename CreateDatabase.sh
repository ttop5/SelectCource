mysql -u'root' -p'passwd' <<EOF

DROP DATABASE IF EXISTS sc;
CREATE DATABASE sc DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE sc;

CREATE TABLE user(
user_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
school_num varchar(20) NOT NULL UNIQUE,
name varchar(50) NOT NULL,
sex varchar(10),
grade varchar(100),
school varchar(100),
major varchar(100),
class varchar(100),
qq varchar(20),
phone varchar(20),
email varchar(60) NOT NULL UNIQUE,
password varchar(120) NOT NULL DEFAULT '123456',
adress varchar(200),
role int(2) NOT NULL DEFAULT '2' 
)CHARSET=utf8;

INSERT INTO user VALUES ('', '1234567890', 'admin', '', '', '', '', '', '', '', 'admin@qq.com', 'passwd', '', '0'); 
INSERT INTO user VALUES ('', '1234567', 'teacher1', '女', '', '机械工程学院', '', '', '', '', 'teacher1@qq.com', 'passwd', '', '1'); 
INSERT INTO user VALUES ('', '2234567', 'teacher2', '男', '', '材料学院', '', '', '', '', 'teacher2@qq.com', 'passwd', '', '1'); 
INSERT INTO user VALUES ('', '13110581072', 'ttop5', '男', '2013', '计算机科学与技术学院', '计算机科学与技术', '计科1302', '1427154738', '18753377101', 'ttop5@qq.com', 'passwd', '云南省昆明市石林县', '2');
INSERT INTO user VALUES ('', '13110581073', '何艳红', '男', '2015', '音乐学院', '古典音乐', '古典1501', '1427155518', '18753377104', 'heyanhong@qq.com', 'passwd', '山东省青岛市', '2');

CREATE TABLE notes(
notes_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
title varchar(50) NOT NULL,
start_time varchar(12) NOT NULL,
stop_time varchar(12) NOT NULL,
description varchar(1000) NOT NULL
)CHARSET=utf8;

INSERT INTO notes VALUES ('', '关于全校大一同学的选课通知', '2015-09-16', '2015-09-17', '此次选课将持续一周的时间，共三次机会，请同学们按时限选课，完成应修的学分。注：大一的每学期最多选两门课！');

CREATE TABLE classroom(
classroom_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
capacity  int(5) NOT NULL,
location varchar(10) NOT NULL
)CHARSET=utf8;

INSERT INTO classroom VALUES ('', '80', '3#101');
INSERT INTO classroom VALUES ('', '160', '3#206');
INSERT INTO classroom VALUES ('', '80', '4#101');
INSERT INTO classroom VALUES ('', '160', '5#206');

CREATE TABLE cource(
cource_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
cource_name varchar(20) NOT NULL,
credit varchar(5) NOT NULL,
teacher int(11) NOT NULL,
classroom int(11) NOT NULL,
schooltime varchar(30) NOT NULL,
CONSTRAINT cource_teacher FOREIGN KEY (teacher) REFERENCES user(user_id),
CONSTRAINT cource_classroom FOREIGN KEY (classroom) REFERENCES classroom(classroom_id)
)CHARSET=utf8;

INSERT INTO cource VALUES('', '计算机网络', '2', '2', '1', '周三9,10节；周五7,8节;[第14-20周]');
INSERT INTO cource VALUES('', '佛教文化', '1.5', '3', '2', '周三9,10节；周五9,10节；[第5-10周]');
INSERT INTO cource VALUES('', '西方艺术鉴赏', '1', '2', '3', '周一3,4节；周二5,6节；[第5-12周]');
INSERT INTO cource VALUES('', '新能源技术', '1.5', '3', '4', '周二7,8节；周六3,4节；[第8-10周]');

CREATE TABLE score(
score_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
student int(11) NOT NULL, 
cource int(11) NOT NULL, 
pingshi_score varchar(5) NOT NULL,
qimo_score varchar(5) NOT NULL,
final_score varchar(5) NOT NULL,
CONSTRAINT score_student FOREIGN KEY (student) REFERENCES user(user_id),
CONSTRAINT score_cource FOREIGN KEY (cource) REFERENCES cource(cource_id)
)CHARSET=utf8;

INSERT INTO score VALUES('', '4', '1', '90', '99', '95');
INSERT INTO score VALUES('', '4', '2', '70', '55', '60');
INSERT INTO score VALUES('', '5', '3', '60', '90', '82');

EOF

