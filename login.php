<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<link href="images/logo.png" rel="shortcut icon" />
	<meta name="author" content="Paweł 'kilab' Balicki - kilab.pl" />
	<title>Login SPPAM</title>
	<link rel="stylesheet" type="text/css" href="css/login.css" media="screen" />
	<script type="text/javascript">
		function validasi(form){
			if (form.user.value == "" & form.pass.value == ""){
				alert("Masukkan Username dan Password!");
				form.user.focus();
				return (false);
			} 
			if (form.user.value == ""){
				alert("Masukkan Username!");
				form.user.focus();
				return (false);
			}     
			if (form.pass.value == ""){
				alert("Masukkan Password!");
				form.pass.focus();
				return (false);
			}
			return (true);
		}
	</script>
	<style>
		.bayangan{
			font-size:27px; text-shadow:#fa5 10px 10px 5px;     
		}
	</style>
</head>
<body>
	<div class='bayangan'>
		<center><h2>Login</h2><h4>Sistem Prediksi Prestasi Akademik Mahasiswa</h4><br></center>
	</div>
	<div class="wrap">
		<div id="content">			
			<div id="main">		
				<div class="full_w">
					<form action="cekLogin.php" method="post" onSubmit="return validasi(this)">
						<label for="user">Username:</label>
							<input id="user" name="user" class="text" placeholder="Username"/>
						<label for="pass">Password:</label>
							<input id="pass" name="pass" type="password" class="text" placeholder="Password"/>
						<div class="sep"></div>
							<button type="submit" class="ok">Login</button>
					</form>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>
