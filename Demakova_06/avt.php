<?php
$host='localhost';
$database='exam_06';
$userdb='root';
$password='';

 $link=mysqli_connect($host,$userdb,$password,$database) or die ("Ошибка" . mysqli_error($link));
	if(isset($_POST['Email'])&& isset($_POST['Password'])){
	$Email=$_POST['Email'];
	$Password=$_POST['Password'];
	
	$chzapr = mysqli_query($link, "SELECT Imya from polzovateli where Email ='".$Email."' and Password ='".$Password."'");
    if (mysqli_num_rows($chzapr) > 0) {
        $zapros = mysqli_fetch_assoc($chzapr);

        $_SESSION['zapros'] = [
            "Imya" => $zapros['Imya']
        ];
		
		echo "Добро пожаловать, ".$_SESSION['zapros']['Imya'];

    } else {
		echo "Не верный логин или пароль!";
    }
}
		?>

<html >
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }
    
    header {
      background-color: #333;
      color: #fff;
      padding: 10px;
      text-align: center;
    }
    
    nav {
      background-color: #555;
      color: #fff;
      padding: 10px;
      text-align: center;
    }
    
    table {
      width: 80%;
      margin: 20px auto;
      border-collapse: collapse;
    }
    
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: center;
    }
    
    th {
      background-color: #f2f2f2;
    }

    th:first-child, td:first-child {
      background-color: #f2f2f2;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <header>
    <h1>Таблица студентов</h1>
  </header>
  
  <nav>
   | <a>Таблица Преподавателей</a> |
    <a>Таблица Специальностей</a> |
    <a>Таблица Расписания</a> |
    <a>Таблица Аудиторий</a> |
  </nav>

  <table>
    <tr>
      <th>Имя</th>
      <th>Фамилия</th>
      <th>Группа</th>
    </tr>
    <tr>
      <td>Петя</td>
      <td>Петрушкин</td>
      <td>ИС1-11</td>
    </tr>
    <tr>
      <td>Наташа</td>
      <td>Ягодкина</td>
      <td>ДИ1-15</td>
    </tr>
    <tr>
      <td>Екатерина</td>
      <td>РОмановна</td>
      <td>ИС1-11</td>
    </tr>
    <tr>
      <td>Дмитрий</td>
      <td>Пуговкин</td>
      <td>ДИ1-15</td>
    </tr>
  </table>
</body>
</html>