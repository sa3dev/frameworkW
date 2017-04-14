<?php
//fichier de routes on ajoute la route que l'on veut
//1er etapes
	$w_routes = array(
		//dans le fichier controller je cree un controller DefaultController.php
		['GET'		 , '/[i:page]?/'        , 'Default#home'     , 'default_home'],   //les ?  permet de dire que c facultatif
		['GET', '/contact'								 , 'Default#contact'  , 'default_contact'],

		//dans le fichier controller je cree un controller ArticleController.php
		['GET|POST' , '/article/create'     	 , 'Article#create'  ,'article_create'],	// creer un article
		['GET'      , '/article'        			 , 'Article#index'   ,'article_index'], 	// liste de nos article
		['GET'      , '/article/delete/[i:id]' , 'Article#delete'  ,'article_delete'],	// supprimer un article
		['GET|POST' , '/article/update/[i:id]' , 'Article#update'  ,'article_update'],	// modifier un article
		['GET'      , '/article/random'        , 'Article#random'  ,'article_random'],	// article aleatoire
		['GET'   		, '/article/[i:id]'        ,'Article#view'     ,'article_view'],		// voir un seul article

		//dans le fichier controller je cree un controller SecurityController.php
		['GET|POST' , '/login'                 , 'Security#login'  , 'security_login'],
		['GET|POST' , '/register'              , 'Security#register', 'security_register'],
		['GET|POST' , '/logout'              , 'Security#logout', 'security_logout'],

		['GET|POST' , '/user/create'           , 'user#create'     ,'user_create'    ],	//cree utilisateur

	);
