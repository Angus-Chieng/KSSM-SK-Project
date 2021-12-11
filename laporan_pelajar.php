<?php 
//MESTI ADA 
require 'sambung.php'; 
require 'keselamatan.php'; 
?>
<html> 
	<title><?php echo $nama_sistem;?></title> 
	<body> <table width="800" border="0">
		<tr> 
		<td width="800"> 
		<table width="800" border="0">
			<tr> 
				<td width="80" valign="top">
				<img src="<?php echo $lencana;?>" width="102" height="102" hspace="7" align="left" /> 
				</td> 
				<td> <h5><?php echo $nama_sekolah;?></h5>
			</tr> 
			<tr> <td colspan="3" valign="top"><hr/></td></tr> 
		</table>
		</td> 
		</tr> 
		<tr> 
			<td>
			<p><strong>LAPORAN MAKLUMAT PELAJAR: </strong></p> 
			<table width="800" border="0" align="center"> 
			</td> 
		</tr> 
	
	<?php $no=1; //NILAI PEMULA PEMBILANG 
	//Arahan SQL 
	$rekod=mysqli_query($hubung,"SELECT idpengguna,idtopik, MAX(skor) FROM perekodan GROUP BY idpengguna HAVING MAX(skor)>=1");
		while ($infoRekod = mysqli_fetch_array ($rekod) ) 
			{ 
	//SAMBUNG TABLE PENGGUNA 
	$pelajar=mysqli_query($hubung,"SELECT * FROM pengguna WHERE idpengguna='$infoRekod[idpengguna]'");
		$infoPelajar=mysqli_fetch_array($pelajar);
	?> 
		<tr width = "500">
			<td width = "200"><b>Nama Pelajar ： </b></td>
			<td width = "300"><?php echo $infoPelajar['nama'] ; ?></td>
		</tr>
		<tr>
			<td><b>Nombor Kod Pengenalan : </b></td>
			<td><?php echo $infoRekod['idpengguna'];;?></td>
		</tr>
		<tr>
			<td><b>Jantina : </b></td>
			<td><?php echo $infoPelajar['jantina'];?></td>
		</tr>
		<tr>
			<td><b>Skor Tertinggi : </b></td>
			<td><?php echo $infoRekod['MAX(skor)'];;?></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>

	<?php
	$no++;
	}
	?>
		</table>
	<br>
	<center><h5>* Laporan Tamat * <br/> Jumlah Rekod:<?php echo $no-1; ?></h5>
	<br>
	<a href="index2.php"><button>Home</button></a>
	<a href="javascript:window.print()"><button>Cetak Laporan</button></a>
	<a href="carian_pelajar.php"><button>Back</button></a>
	<a href="logout.php>Logout</a>
	</center> 
	
	</body> 
</html>