<?php $this->layout('layout', ['title' => 'Article'/*$article['title']*/ ]) ?>

<?php $this->start('main_content') ?>

    <h2><?php echo $article['title'] ?></h2>
		<article >
			<p><?php echo $article['content'] ?></p>
		</article>

<?php $this->stop('main_content') ?>
