<?php

namespace Controller;

use \W\Controller\Controller;

use Model\UserModel;

class SecurityController extends Controller
{
  public function login() //nouveau fichier login.php
  {
      $username = null;
      $message  = null;

    //traitement du form
      if (!empty($_POST) ) {
        $username   = trim($_POST['username']) ;
        $password   = $_POST['password'];

        $user_manager = new UserModel();   //mon manager gere ma connexion en bdd
        $auth_manager = new \W\Security\AuthentificationModel();//pour authentification on instancie un nouvel objet

        $errors = [];         //tableau derreur vide

          if ( !$auth_manager->isValidLoginInfo( $username, $password)) { //recupere l'id de lutilisateur inscrit si il existe en base de donné
              $errors['valid'] = "Le mot de passe n'est pas bon";         // tres important ici sa retourne un $ID
          }

          $user_id = $auth_manager->isValidLoginInfo( $username, $password);

          if ( empty($errors) && $user_id ) {
              $user = $user_manager->find( $user_id ); //cherche toutes les info de lutilisateur par l'id et les stock dans $user

              $auth_manager->logUserIn($user);   //on recupere les données dans un tableau $_SESSION['user'] = $user

              $message = ["Vous etes bien inscris"];

              $this->redirectToRoute('default_home');
          } else {
            $message = $errors;
          }
      }
        //var_dump($this->getUser());    //affiche toutes les info de lutilisateur connecté il renvoi soit null soit $_SESSION['user']

      $this->show('security/login' , ['message' => $message , 'username' => $username  ] );


  }

  public function register()    //nouveau fuchier register.php
  {
        $message  = null;
        $username = null;
        $email    = null;

          if (!empty($_POST) ) {
              $username   = trim($_POST['username']);
              $email      = trim($_POST['email']);
              $password   = trim($_POST['password']);
              $cfpassword = trim($_POST['cfpassword']);

              $user_manager = new UserModel();

              // on verifie si lusername ou l'email existe en bdd
              $errors = [];
                  if ( $user_manager->emailExists($email) || $user_manager->usernameExists($username) ) {
                      $errors['exists'] = "Lemail ou l'username existe deja";
                  }

                  if ( empty($username) || !filter_var($email, FILTER_VALIDATE_EMAIL) ){
                    $errors['username'] = "L'email ou l'username sont vide ou invalide";
                  }

                  if ( $password !== $cfpassword ){
                    $errors['password'] = "Les mots de passe ne correspondent pas";
                  }

              if (empty($errors)) {
                $auth_manager = new \W\Security\AuthentificationModel(); // on instancie le model dauthentification

                  //si il nya pas derreur on inscrit lutilisateur en bdd
                  $user_manager->insert([
                      'username' => $username,
                      'email'    => $email ,
                      'password' => $auth_manager->hashPassword($password),
                      'role'     => 'admin'
                  ]);

                  $message = ["Vous etes bien inscris"];

              } else {
                $message = $errors;
              }
          }

      $this->show('security/register' , ['message' => $message , 'username' => $username , 'email' => $email ]);
  }

    public function logout()
    {
        $auth_manager = new \W\Security\AuthentificationModel();
        $auth_manager->logUserOut();
        $this->redirectToRoute('default_home');
    }

}
