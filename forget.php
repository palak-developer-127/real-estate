<?php 
if(isset($_GET['email'])){

}
?>
<h3>Forget Password</h3>
<form action="forget.php" method="GET">

    <input type="email" name="email" placeholder="enter your registered email" required> <br><br>
    <button type="submit">Get Password In Email</button>
</form>
