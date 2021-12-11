<?php 
//WAJIB FAIL INI 
require 'sambung.php';
require 'keselamatan.php';
//PERLUKAN FAIL INI 
include 'header.php'; 
?> 

<?php 
if (isset($_POST['submit'])){
	if ($_FILES['gambar']['name']==NULL){
		$newnamepic=""; 
	}else{
		$gambar=$_FILES['gambar']['name'];
		$imageArr=explode('.',$gambar); 
		$random=rand(10000,99999); 
		$newnamepic=$imageArr[0].$random.'.'.$imageArr[1];
		$uploadPath="gambar/".$newnamepic;
		$isUploaded=move_uploaded_file($_FILES["gambar"]["tmp_name"],$uploadPath);
		} 
		//NILAI YANG DIBUAT POST 
		$nom_soalan = $_POST['nom_soalan'];
		$idtopik = $_POST['idtopik'];
		$soalan = $_POST['paparan_soalan'];
		$jawapan_betul = $_POST['jawapan_betul'];
		
		$pilihan = array(); 
		$pilihan[1] = $_POST['pilih1'];
		$pilihan[2] = $_POST['pilih2'];
		$pilihan[3] = $_POST['pilih3'];
		$pilihan[4] = $_POST['pilih4'];	
		
		//query soalan 
		$query="INSERT INTO soalan (nom_soalan,soalan,gambarajah,idtopik) values('$nom_soalan','$soalan','$newnamepic','$idtopik')";
		$insert_row=mysqli_query($hubung, $query); 
		$last_id = mysqli_insert_id($hubung); 
	
	//MESEJ POP UP 
	echo "<script>alert('Soalan baru telah berjaya ditambah'); 
	window.location='tambah_soalan.php?idtopik=$idtopik'</script>"; 
	
	//PENETAPAN JAWAPAN BETUL=1 
	if($insert_row){
		foreach($pilihan as $pilihan_jawapan => $pilih){
			if($pilih !=''){
				if($jawapan_betul == $pilihan_jawapan){
					$jawapan = 1;
				}else {
					$jawapan = 0;
				} 
	$query="INSERT INTO pilihan (nom_soalan,jawapan,pilihan_jawapan,idsoalan) 
	values('$nom_soalan','$jawapan','$pilih','$last_id')";
	$insert_row=$hubung->query($query);
		} 
	} 
} 
} 
$topik_pilihan = $_GET['idtopik'];
$_SESSION['topik_semasa'] = $topik_pilihan;
 
//DAPATKAN JUMLAH SOALAN 
$query = "SELECT * FROM soalan WHERE idtopik='$topik_pilihan'";
$soalan = mysqli_query($hubung,$query); 
$total=mysqli_num_rows($soalan);
$next=$total+1;
?> 
<html> 
	<head><?php include 'menu.php'; ?></head> 
	<body> 
		<center><h2>TAMBAH SOALAN</h2></center> 
			<main> 
			<table width="70%" border="0" align="center">
				<tr> 
					<td> 
						<form method="post" enctype="multipart/form-data">
						<p> <label>Soalan ke-</label> 
						<input type="text" value="<?php echo $next; ?>" name="nom_soalan" size="5" readonly />
						<input type="text" value="<?php echo $topik_pilihan; ?>" name="idtopik" hidden /> 
						</p> 
						<p> 
						<label>Soalan</label>
						<textarea id="paparan_soalan" name="paparan_soalan" rows="7" cols="105" autofocus required></textarea> 
						</p> 
						<p> 
						<label>Gambar<br> 
						<small style="color:red">*Jika perlu</small>
						</label> 
						<input type="file" name="gambar"/> 
						</p> 
						<p> 
						<label>Pilihan 1: </label> 
						<input type="text" name="pilih1" style="width:450px;" required /> 
						</p> 
						<p> 
						<label>Pilihan 2: </label> 
						<input type="text" name="pilih2" style="width:450px;" required /> 
						</p>
						<p> 
						<label>Pilihan 3: </label> 
						<input type="text" name="pilih3" style="width:450px;"/> 
						</p> 
						<p> 
						<label>Pilihan 4: </label> 
						<input type="text" name="pilih4" style="width:450px;"/> 
						</p> 
						<p> <label>Pilihan Jawapan [1-4] </label> 
						<input type="text" name="jawapan_betul" style="width:50px;" required /> 
						</p>
						<p> <input type="submit" name="submit" value="CIPTA"/> 
						</p> 
						</form> 
					</td>
				</tr> 
			</table> 
			</main> 
			<?php include 'footer.php';?> 
	</body>
</html> 
