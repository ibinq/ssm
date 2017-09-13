CREATE DATABASE zhihu

USE zhihu

/*创建QUestion表*/
CREATE TABLE question(
  id INT AUTO_INCREMENT,
  title VARCHAR(300) NOT NULL ,
  uid int NOT NULL ,
  content VARCHAR(800),
  follow int ,
  look int,
  askTime DATE ,
   PRIMARY KEY ( id ),
   FOREIGN KEY (uid) REFERENCES USER(id)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

/*创建User表*/
CREATE TABLE USER(
id INT AUTO_INCREMENT,
username VARCHAR(20) NOT NULL,
PASSWORD VARCHAR(20) NOT NULL,
realname VARCHAR(20),
nickname VARCHAR(20),
sex INT ,
WORK VARCHAR(100),
personalInfo VARCHAR(300),
phone VARCHAR(50),
email VARCHAR(100),
headImg VARCHAR(400),
province VARCHAR(20),
city VARCHAR(20),
AREA VARCHAR(20),
birthday DATE ,
backgroundImg VARCHAR(100),
browsed INT ,
agrees INT ,
thinks INT ,
 PRIMARY KEY ( id )
)ENGINE=INNODB DEFAULT CHARSET=utf8;
