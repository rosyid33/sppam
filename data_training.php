<?php
	include "koneksi.php";
	if(isset($_GET['act'])){
		$action=$_GET['act'];
		$id=$_GET['id'];
		//update data training
		if($action=='update'){
			include "update_data_training.php";
		}
		//delete data training
		else if($action=='delete'){
			mysql_query("DELETE FROM data_training WHERE id = '$id'");
			header('location:index.php?menu=data');
		}
		//delete semua data
		else if($action=='delete_all'){
			mysql_query("TRUNCATE data_training");
			header('location:index.php?menu=data');
		}		
	}else{
		include "form_data_training.php";
		$query=mysql_query("select * from data_training order by(id)");
		$jumlah=mysql_num_rows($query);	
	?>
		<br><br><br>
		<p>
			<form method="post" enctype="multipart/form-data" action="upload.php?data=training">
				Opsi: <a href="index.php?menu=data&act=delete_all" onClick="return confirm('Anda yakin akan hapus semua data?')">Hapus Semua Data</a> | 
				Import data excel: <input name="userfile" type="file">
				<input name="upload" type="submit" value="import">
			</form>
		</p>	
	<?php		
		if($jumlah==0){
			echo "<center><h3>Data training masih kosong...</h3></center>";
		}else{
			echo "Jumlah data training: ".$jumlah;				
	?>			
			<table bgcolor='#fa5' border='1' cellspacing='0' cellspading='0' align='center' width=900>
				<tr align='center'>
					<th>No</th><th>Instansi</th><th>Status</th><th>Jurusan</th><th>Nilai Rata UN</th><th>Status Kerja</th><th>Motivasi</th><th><b>Prestasi</b></th><th>Action</th>	
				</tr>
			<?php
				$warna1 = '#ffc';
				$warna2 = '#eea';
				$warna  = $warna1; 	
				$no=1;
				while($row=mysql_fetch_array($query)){
					if($warna == $warna1){ 
						$warna = $warna2; 
					} else { 
						$warna = $warna1; 
					} 			
			?>
					<tr bgcolor=<?php echo $warna; ?> align='center'>
						<td><?php echo $no;?></td>			
						<td><?php echo $row['instansi'];?></td>
						<td><?php echo $row['status'];?></td>
						<td><?php echo $row['jurusan'];?></td>
						<td><?php echo $row['rata_un'];?></td>
						<td><?php echo $row['kerja'];?></td>
						<td><?php echo $row['motivasi'];?></td>
						<td><b><?php echo $row['ipk'];?></b></td>
						<td>
							<a href="index.php?menu=data&act=update&id=<?php echo $row['id']; ?>">Update | </a>	
							<a href="data_training.php?act=delete&id=<?php echo $row['id']; ?>" onclick="return confirm('Apakah anda yakin akan menghapus data?')">Delete</a>	
						</td>
					</tr>
				<?php
					$no++;
				}
				?>
			</table>
<?php
		}
	}
?>