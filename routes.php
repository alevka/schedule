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
						include 'all_users.php';
						echo json_encode(get_data());
						break;
					default:
						
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












	// switch ($_SERVER ['REQUEST_METHOD']) {
	// 	case 'GET': {
	// 		switch ($_GET['action']) {
	// 			case 'all_appointments':
	// 				include 'all_appointments.php'
	// 				break;

	// 			case 'all_users':
	// 				echo "ok";
						
	// 				break;	
				
	// 			default:
					
	// 				break;
	// 		}

		
		
	// 		break;

	// 	case 'POST':
	// 		var_dump($_POST);
	// 		break;	
		
	// 	default:
	// 	echo "no"; 
	// 		throw new Exception($_SERVER['REQUEST_METHOD'], 1);
	// 		break;
	// }

	// switch ($_SERVER['REQUEST_METHOD']) {
 // 	case 'GET':
 // 		switch ($_GET['action']) {
 // 				case 'all_appointments':
 // 					include 'all_appointments.php';
 // 					echo json_encode(get_data());
 // 					break;
 
 // 				case 'all_users':
 // 					include 'index.php';
 // 					// echo 'users will be available soon';
 // 					break;
 // 				default:
 					
 // 					break;
 // 			}
 
 
 // 		break;
 
 // 	case 'POST':
 // 		var_dump($_POST);
 // 		break;
 
 // 	default:
 // 		throw new Exception($_SERVER['REQUEST_METHOD'], 1);
 // 		break;
 // }