/*1*/

CREATE DATABASE IF NOT EXISTS NIIT DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE NIIT;

DROP DATABASE NIIT;

CREATE TABLE IF NOT EXISTS stu (
  rollno INT AUTO_INCREMENT primary key,
  stu_name VARCHAR(45) NOT NULL,
  gender VARCHAR(1) NOT NULL DEFAULT 'M',
  tel VARCHAR(11)  unique)/*唯一约束可以有一个控制*/
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS course (
  course_id INT primary key,
  course_name VARCHAR(45) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


create table if not exists mark (
	mark_id int not null primary key,
    rollno int,
    course_id int,
    score int,
    constraint fk_rollno foreign key (rollno) references stu(rollno),
    constraint fk_course_id foreign key (course_id) references course(course_id))
    engine = InnoDB
    default char set = utf8

select * from mark;


INSERT INTO stu ( rollno, stu_name, gender, tel )
VALUES
(1,"Sam","M","13513365874" ),
(2,"Lily","F","13513365875" ),
(3,"Amy","F","13513365876" ),
(4,"David","M","13513365877" ),
(5,"James","M","13513365878" );

INSERT INTO course ( course_id, course_name )
VALUES
(1,"Math" ),
(2,"English" ),
(3,"JAVA" );

INSERT INTO mark ( mark_id, rollno, course_id, score)
VALUES
(1, 1, 1, 85),
(2, 1, 2, 75),
(3, 2, 2, 65),
(4, 2, 3, 95),
(5, 3, 3, 87),
(6, 3, 3, 87),
(7, 4, 1, 90),
(8, 4, 2, 79),
(9, 5, 2, 92),
(10, 5, 3, 83);

/*2*/
select * from mark;