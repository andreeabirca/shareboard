<div>
	<?php if(isset($_SESSION['is_logged_in'])) : ?>
		<a class="btn btn-success btn-share" href="<?php echo ROOT_URL; ?>/shares/add">Share Something</a>
	<?php endif; ?>
	<?php foreach($viewmodel as $item) : ?>
		<div class="well">
			<h3><?php echo $item['title'];?></h3>
			<small>Created at: <?php echo $item['create_date']; ?></small>
			<hr>
			<p><?php echo $item['body']; ?></p>
			<br>
			<a class="btn btn-secondary" href="<?php echo $item['link'];?>" target="_blank">Go to website</a>
		</div>
	<?php endforeach; ?>
</div>