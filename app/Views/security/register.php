<?php $this->layout('layout', ['title' => 'Inscription ' ]) ?>


<?php $this->start('main_content'); ?>
  <?php
    if (!empty($message)) {
        foreach ($message as $mess) {
            echo '<div>' . $mess . '</div>';
        }
    }
   ?>
<form class="col-lg-7" method="POST">

  <div class="form-group <?= (isset($message['username'])) ? 'has-error' : ''?>">
    <label class="control-label" for="username">Login :</label>
    <input type="text" class="form-control" id="username" name="username" value="<?= $username  ?>">
    <?= (isset($message['username'])) ? '<span class="help-block">'.$message['username'].' .</span>'  : '' ?>
  </div>

  <div class="form-group<?= (isset($message['email'])) ? 'has-error' : ''?> ">
    <label for="email">Email :</label>
    <input type="text" class="form-control" id="email" name="email" value="<?= $email?>">
    <?= (isset($message['email'])) ? '<span class="help-block">'.$message['email'].' .</span>'  : '' ?>
  </div>

  <div class="form-group">
    <label for="password">Mot de passe  :</label>
    <input type="password" class="form-control" id="password" name="password">
  </div>
  <div class="form-group">
    <label for="cfpassword">Confirmation du Mot de passe  :</label>
    <input type="password" class="form-control" id="cfpassword" name="cfpassword">
  </div>

  <input type="submit" class="btn btn-submit" value="Valider">

</form>

<?php //var_dump( $message ); ?>

<?php $this->stop('main_content'); ?>
