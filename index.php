<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<?php
    session_start();
    if (!isset($_SESSION['usr'])){
        header("location:login.php");
    }
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>SPPAM</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="images/logo.png" rel="shortcut icon" />
	<!--<script language="JavaScript">
		var txt=" | Sistem Prediksi Prestasi Akademik Mahasiswa (SPPAM) | ";
		var kecepatan=200;
		var segarkan=null;
		function bergerak() { 
			document.title=txt;
			txt=txt.substring(1,txt.length)+txt.charAt(0);
			segarkan=setTimeout("bergerak()",kecepatan);
		}bergerak();
	</script>-->
	<style>
		.bayangan{
			font-size:27px; text-shadow:#fa5 10px 10px 9px;     
		}
	</style>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700" rel="stylesheet" type="text/css" />
	<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
	<!--[if IE 6]>
	<link href="default_ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
</head>
<body>
	<div id="header">
		<div id="logo">
			<img src="images/logo.png"/>
		</div>
		<div id="logo-name" class="bayangan">
			<h1><a href="index.php">sistem prediksi prestasi akademik mahasiswa</a></h1>
			<p>menggunakan metode decision tree c4.5</p>
		</div>				
	</div>	
	<!-- <div id="banner"> <img src="images/url.jpg" width="940" height="200" alt="" /> </div> -->
	<div id="menu">
		<ul>
			<?php
				$level=$_SESSION['lvl'];
				//jika user kaprodi
				if($level=='0'){
					echo "<li class='first'><a href='index.php?menu=home' accesskey='1' title='Home'>Home</a></li>
							<li><a href='?menu=data' accesskey='1' title='Olah Data Training'>Olah Data</a></li>
							<li><a href='?menu=mining' accesskey='2' title='Proses Pembentukan Tree'>Mining</a></li>
							<li><a href='?menu=tree' accesskey='3' title='Rule Pohon Keputusan'>Pohon Keputusan</a></li>
							<li><a href='?menu=hasil' accesskey='4' title='Hasil Prediksi'>Hasil Prediksi</a></li>
							<li><a href='?menu=user' accesskey='5' title='Data User'>Data User</a></li>";
				}
				//jika user mahasiswa
				else{
					echo "<li class='first'><a href='?menu=home' accesskey='1' title='Home'>Home</a></li>
							<li><a href='?menu=prediksi' accesskey='prediksi' title='Prediksi Prestasi'>Prediksi</a></li>							
							<li><a href='?menu=tree' accesskey='tree' title='Rule Pohon Keputusan'>Pohon Keputusan</a></li>";
				}
			?>								
		</ul>
	</div>
	<div id="wrapper" class="container">
		<h3 align="right">Selamat Datang, </h3>
		<h4 align="right">							
			<?php echo "User ID : ".$_SESSION['usr']." | Nama : ".$_SESSION['nama']." | "; ?>
			<a href='?menu=ubah_password' accesskey='5' title='Change password' >Ubah Password</a> | 
			<a href='logout.php' accesskey='5' title='Log Out' onClick="return confirm('Anda yakin akan keluar?')">Log Out</a>
		</h4>
		<div id="page">			
			<div id="content">
				<div id="box1">							
					<p>																		
						<?php
						//jika menu sudah diset
						if (isset($_GET['menu'])) {
							$kode=$_GET['menu'];
							//menu home
							if($kode=='home'){
								echo "<strong><center>HOME</center></strong><br><br>";
								echo "<center><strong>
									<br><br>
									Aplikasi Sistem Prediksi Prestasi Akademik Mahasiswa.<br><br>
									<img src='images/toga1.jpg' width='250' height='250' alt=''/><br>									
									Aplikasi ini dibuat untuk memprediksi prestasi 
									akademik mahasiswa dengan menggunakan metode decision tree c4.5
									<br>
									Aplikasi ini akan menghasilkan informasi perkiraan kategori mahasiswa
									baru yang akan dikelompokkan kelas tinggi dan rendah.
									</strong></center>";
							}
							//menu olah data
							else if ($kode=='data'){
								echo "<strong><center>OLAH DATA</center></strong><br><br>";
								include 'data_training.php';
							}
							//menu mining (proses pembentukan pohon keputusan)
							else if($kode=='mining'){
								echo "<strong><center>MINING</center></strong><br><br>";
								include 'mining.php';
							}
							//menu pohon keputusan atau rule
							else if($kode=='tree'){
								echo "<strong><center>POHON KEPUTUSAN</center></strong><br><br>";
								include 'tree.php';
							}
							//menu pohon tree2
							else if($kode=='pohon_tree'){
								echo "<strong><center>POHON KEPUTUSAN</center></strong><br><br>";
								include 'pohon_tree.php';
							}
							//menu uji pohon keputusan atau rule
							else if($kode=='uji_rule'){
								echo "<strong><center>UJI Pohon Keputusan</center></strong><br><br>";
								include 'uji_rule.php';
							}
							//menu hasil prediksi
							else if($kode=='hasil'){	
								echo "<strong><center>HASIL PREDIKSI</center></strong><br><br>";
								include 'hasil_prediksi.php';
							}
							//menu data user
							else if($kode=='user'){		
								echo "<strong><center>DATA USER</center></strong><br><br>";
								include 'data_user.php';
							}
							//menu prediksi
							else if($kode=='prediksi'){
								echo "<strong><center>PREDIKSI</center></strong><br><br>";
								include 'prediksi.php';
							}
							//menu ubah password
							else if($kode=='ubah_password'){
								echo "<strong><center>UBAH PASSWORD</center></strong><br><br>";
								include 'ubah_password.php';
							}
						}
						//jika menu belum diset
						else{
							echo "<strong><center>HOME</center></strong><br><br>";
							echo "<center><strong>
									<br><br>
									Aplikasi Sistem Prediksi Prestasi Akademik Mahasiswa.<br><br>
									<img src='images/toga1.jpg' width='250' height='250' alt=''/><br>									
									Aplikasi ini dibuat untuk memprediksi prestasi 
									akademik mahasiswa dengan menggunakan metode decision tree c4.5
									<br>
									Aplikasi ini akan menghasilkan informasi perkiraan kategori mahasiswa
									baru yang akan dikelompokkan kelas tinggi dan rendah.
									</strong></center>";
						}
						?>						
					</p>
				</div>
			</div>
		</div>
	
		<div id="footer">
			<p>&copy; 2014 Aunur Rasyid</p>
		</div>
	</div>
</body>
</html>
