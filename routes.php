<?php

/*if ($_SERVER['REQUEST_METHOD'] === 'GET') {
	var_dump($_GET);
} else if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	var_dump($_POST);
}*/

switch ($_SERVER['REQUEST_METHOD']) {
	case 'GET':
		switch ($_GET['action']) {
				case 'all_appointments':
					include 'all_appointments.php';
					echo json_encode(get_data());
					break;

				case 'all_users':
					echo 'users will be available soon';
					break;
				default:
					# code...
					break;
			}


		break;

	case 'POST':
		var_dump($_POST);
		break;

	default:
		throw new Exception($_SERVER['REQUEST_METHOD'], 1);
		break;
}