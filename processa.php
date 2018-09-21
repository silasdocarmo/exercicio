<?php
session_start();
include_once("conexao.php");

$nome=filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$email=filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL); 
$telefone=filter_input(INPUT_POST, 'telefone', FILTER_SANITIZE_STRING);

//echo "Nome: $nome <br>";
//echo "Email: $email <br>";
//echo "Telefone: $telefone <br>";

$result_cadastros = "INSERT INTO cadastros (nome, email, telefone, created) VALUES ('$nome', '$email', '$telefone', NOW())";
$resultado_cadastros = mysqli_query($conn, $result_cadastros);

if(mysqli_insert_id($conn)){
	$_SESSION['msg'] = "<p style=color:green;'>Cadastro realizado com sucesso </p>";
	header("location: index.php");
} else{
	$_SESSION['msg'] = "<p style='color:red;'>Falha ao cadastrar </p>";
	header("location: index.php");
}