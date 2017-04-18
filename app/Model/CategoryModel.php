<?php /* app/Model/ArticleModel.php */

namespace Model;

class CategoryModel extends \W\Model\Model
{
    public function countArticle()
    {
  		// $sql = 'SELECT COUNT(*) FROM article_category  ';
  		// $sth = $this->dbh->query($sql);
      // // var_dump($sth); die();
  		// // $sth->bindValue(':id', $id);
  		// // $sth->execute();
      //
      // //var_dump($sth->fetch() );
  		// return $sth->fetch();

      $query = $this->dbh->query('SELECT name , COUNT(*) as articles FROM category INNER JOIN article_category ON category.id = article_category.id_category GROUP BY category.name ');
      return $query->fetchAll();
    }
}
