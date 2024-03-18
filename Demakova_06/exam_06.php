<html>
<head>
        <title>Экзамен</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
    }

    form {
        width: 400px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        color: white;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .centered-text {
            text-align: center;
          
        }
</style>
<form action="avt.php" method="POST">
<p class="centered-text">Здравствуйте! Войдите в свою учетную запись:</p>
  <div>
            <label for="login-email">E-mail</label>
            <input type="text" name="Email">
  </div>
  <div>
            <label for="login-password">Пароль</label>
            <input type="password" name="Password">
  </div>
  <div>
        <button type="submit">Вход</button>		
  </div>
      </form>

      
      <form action="reg.php" method="POST">
      <p class="centered-text">У вас нет аккаунта? Зарегистрируйтесь!</p>
            <label>Введите Е-mail:</label>
            <input type="text" name="REmail">
            <label>Введите Пароль:</label>
            <input type="text" name="RPassword">
            <label>Как к вам обращаться:</label>
            <input type="text" name="RImya">
            <label>Ваша фамилия:</label>
            <input type="text" name="RFam">
        <button type="submit">Регистрация</button>
      </form>
</html>
