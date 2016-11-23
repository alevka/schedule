<?php
 
 function open_connection ($host, $username, $pass, $db_name) {
 	return new mysqli($host, $username, $pass, $db_name);
 }
 
 function get_data() {
 	$sql = open_connection('alev.local', 'root', '', 'yadsarah');
 	
 	// if(!sql) {
 	// 	echo "... not connected to the database";
 	// }

 	$result = $sql->query("SELECT * FROM  users");
 
 	$output = [];
 	while ($row = $result->fetch_assoc()) {
 		$output []= $row;
 	}
 	$sql->close();
 
 	return $output;

 	

 }
 
