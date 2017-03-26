<?php session_start() ?>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Enter Questions</title>
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
	<script type="text/javascript">

	function validate(obj)
	{
		var q=document.form1.que.value;
		var ans=document.form1.ans.value;
			if(q==""||ans=="")
			{
				alert("Fill in all the Entries");
				return false;
			}
			return true;
	}
</script>
</head>
<?php
	$_SESSION['msg']='';
	if ($_POST)
	{
		$q=addslashes($_POST['que']);
		// $a=addslashes($_POST['opt1']);
		// $b=addslashes($_POST['opt2']);
		// $c=addslashes($_POST['opt3']);
		// $d=addslashes($_POST['opt4']);
		$ans=addslashes(strtolower(trim($_POST['ans'])));
		include("db_connect.php");
		$query= mysqli_query($con,"insert into questions (question,ans) values ('$q', '$ans')");
			if($query)
			{
				$_SESSION['msg']="Questions successfully added";
			}
			else
			{
				$_SESSION['msg']="Please re-enter";
			}
			include("db_disconnect.php");
	}
?>
<body>
    <div class="navbar navbar-inverse">
      <div class="navbar navbar-static-top">
        <div class="navbar-inner">
          <a class="brand" id="brand">
            NCS
          </a>
          <ul class="nav">
          <li><a href="../admin.php">
          <i class="icon-cog icon-white"></i> Admin</a>
          </li>
          </ul>
        </div>
      </div>
    </div>
	<div class="container">
	<h1>ENTER QUESTIONS AND ANSWERS</h1>
	<?php
		if(isset($_SESSION['msg']))
			if($_SESSION['msg']!='')
			{
				echo '<div class="alert alert-success done">';
				echo $_SESSION['msg'];
				echo '</div>';
			}
	?>
	<FORM  name="form1" ACTION="enter.php" METHOD="POST" onSubmit="return validate()" class="form-horizontal">
		<h3>QUE:</h3>
		<TEXTAREA NAME="que" ROWS=10 align="centre"></TEXTAREA>
		<h3>
		ANSWER
		</h3>
		<input type="text" NAME="ans" value=""/>
		<INPUT TYPE="submit" class = "btn btn-large btn-inverse changebtn" name="Submit" VALUE="submit"></INPUT>
	</FORM>
	</div>
	<?php include("footer.html");?>
</body>
</html>