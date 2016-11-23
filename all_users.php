<?php
 
 function open_connection ($host, $username, $pass, $db_name) {
 	return new mysqli($host, $username, $pass, $db_name);
 }
 
 function get_data() {
 	$mysql = open_connection('alev.local', 'root', '', 'yadsarah');
 	mysql_set_charset( 'utf8' );
 	// if(!sql) {
 	// 	echo "... not connected to the database";
 	// }

 	$result = $mysql->query("SELECT * FROM  users");
 
 	$output = [];
 	while ($row = $result->fetch_assoc()) {
 		$output []= $row;
 	}
 	$mysql->close();
 
 	return $output;

 }

