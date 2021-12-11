<?php
//SETUP PANGKALAN DATA
//TIDAK PERLU UBAH
$host="localhost";
$user="root";
//BIARKAN KOSONG JIKA GUNA XAMPP
$password="";
//NAMA P.DATA-BOLEH UBAH
$database="Chemi_Quiz";
/////////////////
$hubung = mysqli_connect($host,$user,$password,$database);
if (mysqli_connect_error()){
	echo "Proses sambung ke pangkalan data gagal";
	exit();
	}

//PENETAPAN SISTEM 
$lencana = "lencana.jpg";
$subjek="KIMIA TINGKATAN 4";
$nama_sekolah = "SMK ST. MICHAEL, IPOH<BR>
				JALAN SP SEENIVASAGAM,<BR>
				30000 IPOH,<BR>
				PERAK.";
$nama_sistem = "SISTEM PENILAIAN KENDIRI";
$motto_sistem = "FORMAT: SOALAN MC/TF";
$footer = "Self Monitoring Learning System!";
$logo = "logo.png";
?>
				
