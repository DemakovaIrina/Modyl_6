<?php
$host='localhost';
$database='exam_06';
$userdb='root';
$password='';

 $link=mysqli_connect($host,$userdb,$password,$database) or die ("Ошибка" . mysqli_error($link));
	if(isset($_POST['REmail'])&& isset($_POST['RPassword'])&& isset($_POST['RImya'])&& isset($_POST['RFam'])){
	$Email=$_POST['REmail'];
	$Password=$_POST['RPassword'];
	$Imya=$_POST['RImya'];
	$Familiya=$_POST['RFam'];
	$Rol = 1;
	
		if($Email && $Password && $Imya && $Familiya && $Rol){
		$query="insert into polzovateli(Email,Password,Imya,Familiya,ID_Roli) values('$Email','$Password','$Imya','$Familiya','$Rol')";
		echo "Ваш пользователь был успешно зарегистрирован!";
		$result=mysqli_query($link,$query) or die ("Ошибка" . mysqli_error($link));
		
		}
	}
?>

