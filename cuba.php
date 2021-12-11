//TAMAN REKOD
$daftar= "INSERT INTO pengguna (idpengguna,password,nama,jantinan,aras) VALUES ('$idpengguna', '$password','$nama','$jantina','PELAjar');

// LAKSANA ARAHAN SQL 
$hasil = mysqli_query($hubung, $daftar); 
// MESEj POP UP
		if ($hasil) {
			echo "<script>alert('Pendaftaran berjaya');
			window.location='login.php'</script>";
			}else{ echo "<script>alert('Pendaftaran gagal');
			window.location='daftar_baru.php</script>";
			}
}			
?) 