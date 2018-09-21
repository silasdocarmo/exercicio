<?php
session_start();
?>
<!doctype html>
<html lang="pt-br">
 <head>
	<meta charset="utf-8">
	<title>Demand</title>
	<link rel="stylesheet" type="text/css" href="style.css">
 </head>
  <body>
	<?php
	 if(isset($_SESSION['msg']))
		echo $_SESSION['msg'];
	 unset($_SESSION['msg']);
	?>
	 <form method="POST" action="processa.php">
	  <h2>Formulário de Inscrição</h2>
		 <label Nome: />
		 <input type="text" name="nome" placeholder="Nome" Required""><br>

		 <label Email: />
		 <input type="email" name="email" placeholder="E-mail" Required""><br>
		
		 <label Telefone: />
		 <input type="text" name="telefone" placeholder="Telefone" Required""><br><br>
		 
		 <label class="enviar">
		 <input type="Submit" Value="Enviar">
	  </form>
   </body>
</html>
