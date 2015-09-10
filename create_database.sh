mysql -u'root' -p'passwd' <<EOF

CREATE DATABASE student_manage;
USE student_manage;

CREATE TABLE user(
user_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
school_num int(20) NOT NULL,
name varchar(50) NOT NULL,
sex varchar(10),
grade varchar(100),
school varchar(100),
major varchar(100),
class varchar(100),
qq varchar(20),
phone varchar(20),
email varchar(60) NOT NULL,
password varchar(120) NOT NULL,
adress varchar(200),
role int(2) NOT NULL DEFAULT '2' 
)charset=utf8;

INSERT INTO user VALUES ('', '13110581072', 'admin', '男', '2013', '计算机科学与技术学院', '计算机科学与技术', '计科1302', '1427154738', '18753377101', 'ttop5@qq.com', 'passwd', '云南省昆明市石林县', '0'); 
EOF
