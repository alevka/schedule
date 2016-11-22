INSERT INTO `diagnoses`(`name`) VALUES ('דיסארטריה'), ('אנארטריה'), ('דיספוניה'),
('אפזיה'), ('דיבור חטוף'), ('קשיים בשיום ושליפה'), ('לקוית שמיעה'), ('קושי בהפקת קול');

INSERT INTO `procedures`( `name`) VALUES ('קלינאית תקשורת'), ('יצירה'), ('תזונה'), ('טיפול רגשי קבוצתי'), ('קרמיקה'), ('הרצאת רופא');

SELECT u.fname, u.lname, p.name as proc, s.week_day, s.lesson
	FROM `schedule` s
	join users u on s.user_id = u.id
	join procedures p on s.procedure_id = p.id
-- where u.id = 1

CREATE TABLE IF NOT EXISTS `users` (
  	`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	`fname` varchar(60) COLLATE utf8_bin NOT NULL,
  	`lname` varchar(60) COLLATE utf8_bin NOT NULL,
  	`birthdate` date NOT NULL,
  	`address` varchar(100) COLLATE utf8_bin NOT NULL,
  	`phone` varchar(15) COLLATE utf8_bin NOT NULL,
  	`diagnose_id` int(11) NOT NULL,
  	`comments` varchar(200) COLLATE utf8_bin NOT NULL) ;

INSERT INTO `users`( `fname`, `lname`, `birthdate`, `address`, `phone`, `diagnose_id`, `comments`) 
	VALUES ('דוד', 'פורמן', '1979-12-12', 'ראשון לציון הרצל 94/5', '0503498588', '5', '');

CREATE TABLE IF NOT EXISTS `accessory`(
	`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` varchar(100) NOT NULL);

