
<!-- permet de fr des include du header ou footer -->
<?php $this->layout('layout', ['title' => 'Le Blog']) ?>

<?php $this->start('main_content') ?>


	<?php foreach ($articles as $article): ?>
		<article class="">
			<h2>
				<a href="<?php echo $this->url('article_view' , ['id' => $article['id_article'] ]) ?>"><?php echo $article['title'] ?></a>
			</h2>

			<p><?php echo $article['content'] ?></p>
			<p class="text-right">
				<a href="<?php echo $this->url('article_view' , ['id'=>$article['id_article']]) ?>" class="btn btn-primary">lire l'article</a>
				<p>Ecrit par <?php echo  ($article['username']) ? ($article['username']) : "Anonyme"  ?> le
					<?php
						// a la base echo date('d m Y' ,strtotime($article['created_at']));
						//avec fonction

						$datetime = new Datetime($article['created_at']);
						$intl = new IntlDateFormatter(
							'fr_FR',
							IntlDateFormatter::FULL,
							IntlDateFormatter::MEDIUM
						);
							echo $intl->format($datetime);
					?></p>
			</p>
		</article>
	<?php endforeach; ?>

		<ul class="pagination">
			<?php if ($page > 1): ?>
				<li><a href="<?= $this->url('default_home' , ['page' => $page - 1]); ?>"><<</a></li>
			<?php endif; ?>

			<?php for ($i=1; $i <= $max_pages ; $i++) { ?>
				<li><a href="<?= $this->url('default_home', ['page' => $i ] );  ?>"><?php echo $i; ?></a></li>
			<?php } ?>

			<?php if ($max_pages > $page ): ?>
				<li><a href="<?= $this->url('default_home' , ['page' => $page + 1]); ?>">>></a></li>
			<?php endif; ?>
		</ul>

		<!-- http://ww.alt-codes.net/ -->

<?php $this->stop('main_content') ?>

<?php $this->start('sidebar') ?>

		<div class="">
			<h1>Categories</h1>
			<ul class="list-group">
				<?php foreach ($categories as $category) { ?>
			  	<li class="list-group-item"><span class="badge"><?php echo $category['articles']; ?></span> <a href="#"><?= $category['name']; ?></a></li>
				<?php } ?>
			</ul>

			<h1>Derniers article</h1>
			<ul class="list-group">
				<?php foreach ($last_article as $value) { ?>
					<li class="list-group-item"><a href="<?= $this->url('article_view' , ['id' => $value['id'] ])?>"><?php echo $value['title']; ?></a></li>
				<?php } ?>
			</ul>
		</div>

<?php $this->stop('sidebar') ?>
