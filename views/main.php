<!DOCTYPE html>
<html>
<head>
	<title>Shareboard</title>
	<link rel="stylesheet" href="../assets/css/bootstrap.css">
	<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Shareboard</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="<?php echo ROOT_URL; ?>/">Home <span class="sr-only"></span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo ROOT_URL; ?>/shares">Shares <span class="sr-only"></span></a>
          </li>
          
        </ul>
        <ul class="navbar-nav">
          <?php if(isset($_SESSION['is_logged_in'])) : ?>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo ROOT_URL; ?>">Welcome, <?php echo $_SESSION['user_data']['name'];?><span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo ROOT_URL; ?>/users/logout">Logout <span class="sr-only"></span></a>
            </li>
          <?php else: ?>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo ROOT_URL; ?>/users/login">Login <span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo ROOT_URL; ?>/users/register">Register <span class="sr-only"></span></a>
            </li>
          <?php endif; ?>
        </ul>
      </div>
    </nav>

    <div class="container">

    	<div class="starter-template">
        <?php Messages::display(); ?>
		    	<?php require($view); ?>	
		  </div>
    </div><!-- /.container -->
</body>
</html>