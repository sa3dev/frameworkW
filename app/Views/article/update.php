
<?php $this->layout('layout', ['title' => 'Editer l\'article ' . $article['title']]) ?>


<?php $this->start('main_content'); ?>
  <h1>Editer l'article</h1>
  <div class="">
    <a href="<?= $this->url('article_index') ?>">Revenir sur la liste des articles</a>
  </div>

  <form class="col-lg-7" method="POST">

    <div class="form-group">
      <label for="title">Titre :</label>
      <input type="text" class="form-control" name="title" value="<?= $article['title']; ?>">
    </div>

    <div class="form-group">
      <label for="content">contenu :</label>
      <textarea type="text" class="form-control" name="content" value=""><?= $article['content']; ?></textarea>
    </div>

    <div class="form-group">
      <label  for="category">Category :</label>
      <input type="text" class="form-control tagsinput" name="category" value="<?= $article['categories']; ?>" >
    </div>

    <input type="submit" class="btn btn-submit" value="Publier l'article">

  </form>
<?php $this->stop('main_content'); ?>
