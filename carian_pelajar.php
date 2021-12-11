<?php 
//WAJIB FAIL INI 
require 'sambung.php'; 
require 'keselamatan.php'; 
//PERLUKAN FAIL INI 
include 'header.php'; 
?> 
<html>
<head>
<?php include 'menu.php'; ?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 9px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 17%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>

<h2 style = "text-align: center">Carian Pelajar</h2>
	<form class="example" action="" style="margin:auto;max-width:300px" method = "post">
		<input type="text" placeholder="Search..." name="search2">
		<button type="submit" name = "submit1"><i class="fa fa-search"></i></button>
	</form>
	
<?php
	$conn = new PDO("mysql:host=localhost;dbname=chemi_quiz",'root','');

	if (isset($_POST["submit1"])) {
	$str = $_POST["search2"];
	$sth = $conn->prepare("SELECT pengguna.nama,pengguna.idpengguna,pengguna.jantina,perekodan.skor FROM `pengguna`,`perekodan` WHERE nama = '$str'");
	$sth->setFetchMode(PDO:: FETCH_OBJ);
	$sth -> execute();

	if($row = $sth->fetch())
	{
		?>
		<br>
		<table width='50%' border='1' align='center' style='font-size:16px' >
		<h3 style="text-align:center">MAKLUMAT PELAJAR</h3>
			<tr>
				<td>Nama Pelajar ： </td>
				<td><?php echo $row->nama; ?></td>
			</tr>
			<tr>
				<td>Nombor Kod Pengenalan : </td>
				<td><?php echo $row->idpengguna;?></td>
			</tr>
			<tr>
				<td>Jantina : </td>
				<td><?php echo $row->jantina;?></td>
			</tr>
			<tr>
				<td>Skor Tertinggi : </td>
				<td><?php echo $row->skor;?> / 5</td>
			</tr>

		</table>
<?php 
	}
		
		else{
			echo"Name does not exist";
		}

}
	
?>
<br><br>
<center>
<button>
	<a href="laporan_pelajar.php"> Laporan</a> 
	</button>
</center>
</body>
</html> 