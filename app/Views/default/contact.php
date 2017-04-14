

<?php $this->layout('layout',['title'=>'Contact'] ); ?>


<?php $this->start('main_content') ?>

<h1>Laissez-nous un message</h1>
<form  method="POST">
  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" name="email" class="form-control">

    <label for="detail">Detail</label>
    <textarea name="detail" class="form-control" rows="8" cols="80"></textarea>

  </div>
  <input type="submit" name="" value="Envoyer">
</form>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>

<?php $this->stop('main_content') ?>
