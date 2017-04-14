
<!-- permet de fr des include du header ou footer -->
<?php $this->layout('layout', ['title' => 'Le Blog']) ?>

<?php $this->start('main_content') ?>


	<?php foreach ($articles as $article): ?>
		<article class="">
			<h2>
				<a href="<?php echo $this->url('article_view' , ['id' => $article['id'] ]) ?>"><?php echo $article['title'] ?></a>
			</h2>

			<p><?php echo $article['content'] ?></p>
			<p class="text-right">
				<a href="<?php echo $this->url('article_view' , ['id'=>$article['id']]) ?>" class="btn btn-primary">lire l'article</a>
				<p>Ecrit par <?php echo $article['username']; ?> le <?php echo $article['created_at']; ?></p>
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

		<div class="thumbnail">
			<h1>TEST</h1>
			<img src="" alt="">
			<p>test</p>
		</div>

		<div class="thumbnail">
			<h1>TEST2</h1>
			<img src="" alt="">
			<p>test</p>
		</div>

<?php $this->stop('sidebar') ?>
