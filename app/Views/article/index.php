
<!--layout vien de platephp.com  3e etape on recupere nos article-->
<?php $this->layout('layout', ['title' => 'Liste des article']) ?>


<?php $this->start('main_content'); ?>

    <div>
      <a href="<?= $this->url('article_create') ?>" class="btn btn-primary">Ajouter un article</a>
    </div>

      <div class="row">
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Id</th>
              <th>Titre</th>
              <th>Contenu</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($articles as $article) { ?><!--ici on a recuperer $articles grace a $this->show('article/index' , ['articles' => $articles]); -->
                  <tr>
                    <td><?php echo $article['id'];      ?></td>
                    <td><?php echo $article['title'];   ?></td>
                    <td><?php echo $article['content']; ?></td>
                    <td>
                        <a class="btn btn-primary" href="<?= $this->url('article_update' , ['id' => $article['id']])  ?>">Modifier</a>
                    </td>
                    <td>
                        <a class="btn btn-danger" href="<?= $this->url( 'article_delete' , ['id' => $article['id'] ] )?>">Suprimer</a>
                    </td>
                  </tr>
            <?php  } ?>
          </tbody>
        </table>
      </div>

<?php $this->stop('main_content'); ?>
