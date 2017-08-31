<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Register User</h3>
  </div>
  <div class="panel-body">
    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    	<div class="form-group">
    		<label>Name</label>
    		<input type="text" name="name" class="form-control" autocomplete="off" />
    	</div>
    	<div class="form-group">
    		<label>E-mail</label>
    		<input type="text" name="email" class="form-control" autocomplete="off" />
    	</div>
    	<div class="form-group">
    		<label>Password</label>
    		<input type="password" name="password" class="form-control" autocomplete="off" />
    	</div>
    	<input class="btn btn-primary" name="submit" type="submit" value="Submit" />
    	<a class="btn btn-danger" href="<?php echo ROOT_URL; ?>/shares">Cancel</a>
    </form>
  </div>
</div>