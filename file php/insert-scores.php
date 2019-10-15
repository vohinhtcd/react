
<?php
  $entityBody = file_get_contents('php://input');
  $txtphp = json_decode($entityBody, true);
  $query = "INSERT INTO `diem` (`id`, `name`, `scores`) VALUES (NULL, '".$txtphp['name']."', '".$txtphp['scores']."')";

  $conn = mysqli_connect('localhost', 'root', '', 'androi');
  mysqli_set_charset($conn,"utf8");
  $myArray = array();
    mysqli_query($conn, $query);

?>