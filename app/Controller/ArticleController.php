<?php

namespace Controller;

use \W\Controller\Controller;

//on a besoin de de modele darticle pr utliser la
use \Model\ArticleModel;
use \Model\CategoryModel;
use \Model\ArticleCategoryModel;


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
          $title      = $_POST['title'];
          $content    = $_POST['content'];
          $categories = explode("," ,$_POST['category']); //transforme une string en tableau attend une virgule pour couper les valeurs

          $articleManager = new ArticleModel(); //mon manager gere mes article en bdd

          if (!empty($title) && !empty($content)) { // je verifie si les gens sont vide ou pas
            //ajout de l'article
            $art = $articleManager->insert([       // la methode insert existe sous W et fait deja nos requettes sql
                  'title'     => $title,
                  'content'   => $content,
                  'author_id' => $this->getuser()['id']  // on recupere l'id de lutilisateur connecté
              ]);

              //ne pas oublier les /use \Model\CategoryModel;
              $category_Manager = new CategoryModel();  // on instancie une nouvelle objet pour entrer en bdd mes categories
              //ne pas oublier les /use \Model\ArticleCategoryModel;
              $category_article_manager = new ArticleCategoryModel();  // on creer un nouveau model pour lier article/categories

              //ajout des categories et liens entre categories et article
              foreach ($categories as $category_name) {

                $ctgry = @$category_Manager->search(['name' => $category_name])[0]; //si la categories existe deja en base en la creer pas ,sinn on la creer en bdd
                //var_dump($ctgry);

                  if (!$ctgry) { // si la categorie nexiste pas je la creer et j'ajoute
                    $ctgry =  $category_Manager->insert(['name' => $category_name]);
                      //on insert chaque nom de categorie en bdd
                  }
                    //pour chaque article inseré on  lie l'article a chacunes des categories
                  $category_article_manager->insert(['id_category' => $ctgry['id'] ,'id_article' => $art['id'] ]);
                    //var_dump($category_article_manager);

              }
              //var_dump($categories);
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

    // on reecrit l'article
    public function update($id)
    {
        $this->allowTo('admin');
        $article_manager = new ArticleModel();

        if (!empty($_POST) ) {
          $title    = $_POST['title'];
          $content  = $_POST['content'];
          $categories = explode("," ,$_POST['category']);

          if (!empty($title) && !empty($content)) { // je verifie si les gens sont vide ou pas
            //$articleManager->insert($_POST);
            $article =  $article_manager->update([       // la methode insert existe sous W et fait deja nos requettes sql
                  'title'   => $title,
                  'content' => $content
              ] , $id ); // la methode update de base prend 2 argument un tableau et  un $id
          }

          $category_Manager = new CategoryModel();  // on instancie une nouvelle objet pour entrer en bdd mes categories ne pas oublier les
          $category_article_manager = new ArticleCategoryModel();  // on creer un nouveau model pour lier article/categories

          $category_article_manager->deleteByArticle($id);

          //ajout des categories et liens entre categories et article
          foreach ($categories as $category_name) {

            $ctgry = @$category_Manager->search(['name' => $category_name])[0]; //si la categories existe deja en base en la creer pas ,sinn on la creer en bdd

              if (!$ctgry) {
                $ctgry =  $category_Manager->insert(['name' => $category_name]);
              }

              $category_article_manager->insert(['id_category' => $ctgry['id'] ,'id_article' => $article['id'] ]);
          }
      }

      $article = $article_manager->findWithCategory($id);

      $this->show('article/update' ,array('article' => $article) ); // on affiche notre vue qui aura un formulaire
                                      //et on passe un formulaire avec les données dun seul article
    }

    public function view($id)
    {
      $article_manager = new ArticleModel();
      $article = $article_manager->find($id);  // je recupere les donnes de larticle en question

      $this->show('article/view' , ['article' => $article]);
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


    public function categories()
    {
      $category_Manager = new CategoryModel;

      $categories = $category_Manager->findAll(); //renvoi un tableau

      $this->showJson($categories);
    }

}
