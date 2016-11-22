<?php

function open_connection ($host, $username, $pass, $db_name) {
	return new mysqli($host, $username, $pass, $db_name);
}

function get_data () {
	$sql = open_connection('localhost', 'root', '', 'yadsara');

	$result = $sql->query("SELECT u.fname, u.lname, p.name as proc, s.week_day, s.lesson
		FROM `schedule` s
		join users u on s.user_id = u.id
		join procedures p on s.procedure_id = p.id");

	$output = [];
	while ($row = $result->fetch_assoc()) {
		$output []= $row;
	}
	$sql->close();

	return $output;
}