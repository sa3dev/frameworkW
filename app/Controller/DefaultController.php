<?php
//soccupe de la home page et page contact
namespace Controller;

use \W\Controller\Controller;
use \Model\ArticleModel; // on aura besoin de la classe pour nos article

class DefaultController extends Controller
{

	/**
	 * Page d'accueil par défaut
	 */
	public function home($page = 1) 		//par defautl on est sur la page 1
	{
		$article_manager = new ArticleModel();    //la table article doit exister en base

		$article_by_page = 10; //nbr article par page
		$total_article = count($article_manager->findAll() );	 //je compte le nombre d'articles au total
		$offset = ( $page - 1  ) * $article_by_page;

		$max_pages = ceil($total_article / $article_by_page  ); // on arondit a entier superier avec ceil

		//recupere les données avec les auteurs des articles grave a une jointure entre tables findAllJoinAuthor()
    $articles = $article_manager->findAllJoinAuthor('' , 'ASC' , $article_by_page , $offset	); // je recuper les donnés sous forme de tableau
		//var_dump($articles);
		$this->show('default/home' , [
				'articles'  => $articles,
				'page'			=> $page,
				'max_pages' => $max_pages
			]); 	//ici show balance dans la vu tous mon tableau
	}
	/**
	 *	Page de contact
	 */
	public function contact()
	{
		//include ici du fichier
		$this->show('default/contact');
	}

}
