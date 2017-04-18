<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<title><?= $this->e($title) ?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<link rel="stylesheet" href="<?php echo $this->assetUrl('css/bootstrap-tagsinput.css') ?>"></link>
	<link rel="stylesheet" href="<?php echo $this->assetUrl('css/style.css') ?>">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#"><?= $w_site_name ; ?></a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">

	        <li <?= ($w_current_route == 'default_home') ? 'class="active"' : '' ; ?>><a href="<?php echo $this->url('default_home'); ?>">Accueil</a></li>

	        <li <?= ($w_current_route == 'default_contact') ? 'class="active"' : '' ; ?>><a href="<?php echo $this->url('default_contact'); ?>">Contact</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<?php if ($w_user) {  ?>

								<li <?= ($w_current_route == 'article_index') ? 'class="active"' : '' ; ?>><a href="<?php echo $this->url('article_index'); ?>">Liste d'article</a></li>
								<li <?= ($w_current_route == 'security_logout') ? 'class="active"' : '' ; ?>><a href="<?php echo $this->url('security_logout'); ?>"> Se deconnecté</a></li>

							<?php }else{ ?>

									<li <?= ($w_current_route == 'security_register') ? 'class="active"' : '' ; ?>><a href="<?php echo $this->url('security_register'); ?>">Inscription</a></li>
									<li <?= ($w_current_route == 'security_login') ? 'class="active"' : '' ; ?>><a href="<?php echo $this->url('security_login'); ?>">Login</a></li>

								<?php } ?>
						</ul>
				</ul>
	    </div><!-- /.navbar-collapse -->
  	</div><!-- /.container-fluid -->
	</nav>
	<div class="container">
		<header>
			<h1><?= $this->e($title) ?></h1>
		</header>

		<?php //debug($w_user) ?>

		<section class="row">
			<?php if ($this->section('sidebar')) {  // si la section(sidebar) existe ?>

				<div class="col-lg-9 col-md-9 col-ls-9 col-sm-9">
					<?= $this->section('main_content') ?>
				</div>
				<div class="col-lg-3 col-md-9 col-ls-9 col-sm-9">
					<?= $this->section('sidebar') ?>
				</div>

				<?php } else {  ?>
					<?= $this->section('main_content'	) ?>
				<?php } ?>
		</section>


		<footer >
		</footer>
	</div>

	<script src="<?= $this->assetUrl('js/jquery-3.1.1.min.js') ?>"></script>
	<script src="<?= $this->assetUrl('js/bootstrap.js') ?>"></script>
	<script src="<?= $this->assetUrl('js/bootstrap-tagsinput.js') ?>"></script>
	<script src="<?= $this->assetUrl('js/typeahead.bundle.min.js') ?>"></script>
	<script src="<?= $this->assetUrl('js/app.js') ?>"></script>
</body>
</html>
