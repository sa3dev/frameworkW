<?php

namespace Controller;

use \W\Controller\Controller;

//on a besoin de de modele darticle pr utliser la
use \Model\ArticleModel;

class ArticleController extends Controller
{
    // 2e etape page qui liste les article (on evite le nom liste)
    public function index()
    {
        $this->allowTo('admin');      // on autorise uniquement les admin et les inscrits
        $article_manager = new ArticleModel();    //la table article doit exister en base
        $articles = $article_manager->findAll(); // je recuper les donnés sous forme de tableau

        $this->show('article/index' , ['articles' => $articles]); // on place un tableau en 2e prametres qui reprend tout les données qu on reprendra dans la vue
    }

    //on ajoute un article en bdd
    public function create()
    {
        $this->allowTo('admin');  // reserevé au admin
      //traitement du form
        if (!empty($_POST) ) {
          $title   = $_POST['title'];
          $content = $_POST['content'];

          $articleManager = new ArticleModel(); //mon manager gere mes article en bdd

          if (!empty($title) && !empty($content)) { // je verifie si les gens sont vide ou pas
            //$articleManager->insert($_POST);
            $articleManager->insert([       // la methode insert existe sous W et fait deja nos requettes sql
                  'title'     => $title,
                  'content'   => $content,
                  'author_id' => $this->getuser()['id'] // on recupere l'id de lutilisateur connecté
              ]);
          }
        }

      //var_dump($_POST);
      $this->show('article/create'); //article/create
    }

    //on recupere l'id de l'article avec l'url pour le supprimer
    public function delete($id)
    {
      $this->allowTo('admin');
      $article_manager = new ArticleModel();
      $article_manager->delete($id); // ici on supprime l'article de la bdd

      $this->redirectToRoute('article_index');
      //var_dump($id);
    }

    // on ajoute aleatoirement 100 article
    public function random()
    {
      $this->allowTo('admin');
      $faker =  \Faker\Factory::create('fr_FR'); // on instancie faker en francais
      $article_manager = new ArticleModel();    //on instancie le manager

        for ($i=0; $i < 100 ; $i++) {         // on ajoute 100 article
        $article_manager->insert([
              'title'   => $faker->sentence(),    //phrase aleatoire
              'content'   => $faker->realText(),     //texte aleatoire
              'created_at'  => $faker->dateTimeBetween('-1 year')->format('Y-m-d H:i:s')
                 //date aleatoire dans cette année
          ]);
      } //var_dump($faker);
    }

    // on reecrit l'article
    public function update($id)
    {
        $this->allowTo('admin');
      $article_manager = new ArticleModel();
      $article = $article_manager->find($id); // on cherchera un seul article avec son id

      if (!empty($_POST) ) {
        $title    = $_POST['title'];
        $content  = $_POST['content'];

        if (!empty($title) && !empty($content)) { // je verifie si les gens sont vide ou pas
          //$articleManager->insert($_POST);
          $article =  $article_manager->update([       // la methode insert existe sous W et fait deja nos requettes sql
                'title'   => $title,
                'content' => $content
            ] , $id ); // la methode update de base prend 2 argument un tableau et  un $id
        }

      }


      $this->show('article/update' ,array('article' => $article) ); // on affiche notre vue qui aura un formulaire
                                      //et on passe un formulaire avec les données dun seul article
    }

    public function view($id)
    {
      $article_manager = new ArticleModel();
      $article = $article_manager->find($id);  // je recupere les donnes de larticle en question

      $this->show('article/view' , ['article' => $article]);
    }


}
