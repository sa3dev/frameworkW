<?php $this->layout('layout', ['title' => 'Article']) ?>


<?php $this->start('main_content'); ?>
  <h1>Ajouter un article</h1>

  <form class="col-lg-7" method="POST">

    <div class="form-group">
      <label for="title">Titre :</label>
      <input type="text" class="form-control" name="title" value="">
    </div>

    <div class="form-group">
      <label for="content">contenu :</label>
      <textarea type="text" class="form-control" name="content" value=""></textarea>
    </div>

    <div class="form-group">
      <label for="category">Category :</label>
      <input type="text" class="form-control" name="category" value="">
    </div>

    <input type="submit" class="btn btn-submit" value="Publier l'article">

  </form>
<?php $this->stop('main_content'); ?>
