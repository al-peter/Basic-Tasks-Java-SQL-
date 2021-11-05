CREATE DATABASE salesforce_task1;

USE salesforce_task1;

CREATE TABLE `Students` (
	`id` int NOT NULL,
	`name` TEXT NOT NULL,
	`marks` int NOT NULL
);

show tables;

show columns FROM Students;

INSERT INTO `Students` (`ID`, `NAME`, `MARKS`) 
VALUES ('1', 'Oleg ', '41'), ('2', 'Vasya ', '32'), ('3', 'Alina', '22'), ('4', 'Alyona', '59'), ('5', 'Anastasiya', '87'), ('6', 'Anya', '99'), 
('7', 'Mischa', '12'), ('8', 'Boris', '33'), ('9', 'Alexei', '42'), ('10', 'Daniil', '78'), ('11', 'Leonid', '32'), ('12', 'Nikita', '31'), 
('13', 'Anatoly', '66'), ('14', 'Dmitri', '73'), ('15', 'Igor', '23'), ('16', 'Ivan', '59'), ('17', 'Luka', '13'), ('18', 'Matvey', '44'), 
('19', 'Lev', '87'), ('20', 'Yuri', '77'), ('21', 'Rodion', '37'), ('22', 'Maxim', '48'), ('23', 'Nikolai', '24'), ('24', 'Andrei', '65'), 
('25', 'Valentin', '62'), ('26', 'Pasha', '34'), ('27', 'Artem', '45'), ('28', 'Viktor', '88'), ('29', 'Mark', '14'), ('30', 'Oksana', '27'),
('31', 'Nora', '81'), ('32', 'Nova', '32'), ('33', 'Emilia', '47'), ('34', 'Violet', '80'), ('35', 'Maya', '20'), 
('36', 'Emilia', '31'), ('37', 'Elizabeth', '78'), ('38', 'Emma', '44'), ('39', 'Logan', '27'), ('40', 'Jackson', '65');

SELECT AVG(marks) AS 'marksaverage'
FROM Students
WHERE marks >= 40;
