/*1*/

CREATE DATABASE IF NOT EXISTS NIIT DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE NIIT;

CREATE TABLE IF NOT EXISTS `niit`.`stu` (
  `rollno` INT NOT NULL AUTO_INCREMENT,
  `stu_name` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL DEFAULT 'M',
  `tel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`rollno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `niit`.`course` (
  `course_id` INT NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `niit`.`mark` (
  `mark_id` INT NOT NULL,
  `score` INT NOT NULL,
  PRIMARY KEY (`mark_id`),
  INDEX `score_idx` (`score` ASC),
  CONSTRAINT `stu`
    FOREIGN KEY (`mark_id`)
    REFERENCES `niit`.`stu` (`rollno`),
  CONSTRAINT `score`
    FOREIGN KEY (`score`)
    REFERENCES `niit`.`course` (`course_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

select * from course;


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
(3,"History" );

/*INSERT INTO mark ( mark_id, score, rollno)
VALUES
*/

/*2*/
