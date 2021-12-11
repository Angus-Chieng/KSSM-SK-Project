<?php 
//WAJIB FAIL INI 
require 'sambung.php'; 
require 'keselamatan.php'; 
//PERLUKAN FAIL INI 
include 'header.php'; 
?> 
<html> 
	<head><?php include 'menu.php'; ?></head> 
	<body> <center><h2>PRESTASI PELAJAR BERDASARKAN TOPIK</h2> </center> 
			<form> <table width="30%" border="1" align="center" style='font-size:16px'> 
					<tr> 
						<td width="10%"><b>MASUKKAN TOPIK :</b></td> 
						<td width="8%">
							<select>  
								<option disabled selected>Pilih Topik</option>
								<?php 
									$rekod = mysqli_query($hubung, "SELECT topik From topik ");  // Use select query here 
									while($data = mysqli_fetch_array($rekod))
									{
										echo "<option value='". $data['topik'] ."'>" .$data['topik'] ."</option>";  // displaying data in option menu
										
									}	
								?>
							</select>
						</td>
						<td width="3%"><a href="laporan_guru.php?idtopik=<?php echo $infoTopik['idtopik'];?>">
										<button>CARIAN </button></a>								
							  
						</td>
					re
						 
					</tr> 
				</table> 
				</form>
	</body>
</html> 
