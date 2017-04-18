<?php /* app/Model/ArticleModel.php */

namespace Model;

class ArticleModel extends \W\Model\Model
{
	//On herite de tout ce qu il ya dans W
  //On fait un copier coller de function findAll() on renomme findAllJoinAuthor()
  //
    public function findAllJoinAuthor($orderBy = '', $orderDir = 'ASC', $limit = null, $offset = null)
    {
      $sql = 'SELECT *, users.id as id_user , article.id as id_article FROM ' . $this->table;
      if (!empty($orderBy)){

        //sécurisation des paramètres, pour éviter les injections SQL
        if(!preg_match('#^[a-zA-Z0-9_$]+$#', $orderBy)){
          die('Error: invalid orderBy param');
        }
        $orderDir = strtoupper($orderDir);
        if($orderDir != 'ASC' && $orderDir != 'DESC'){
          die('Error: invalid orderDir param');
        }
        if ($limit && !is_int($limit)){
          die('Error: invalid limit param');
        }
        if ($offset && !is_int($offset)){
          die('Error: invalid offset param');
        }

        $sql .= ' ORDER BY '.$orderBy.' '.$orderDir;
      }
      $sql .= ' LEFT JOIN users ON users.id = article.author_id'; // ne pas oublier lespace avant le LEFT JOIN
          if($limit){
              $sql .= ' LIMIT '.$limit;
              if($offset){
                  $sql .= ' OFFSET '.$offset;
              }
          }
      $sth = $this->dbh->prepare($sql);
      $sth->execute();

      //die($sql);

      return $sth->fetchAll();
    }

    public function findWithCategory( $id )
    {
        if (!is_numeric($id)){
          return false;
        }

        $sql = 'SELECT *, GROUP_CONCAT(category.name) as categories FROM ' . $this->table . '
         LEFT JOIN article_category ON article_category.id_article = article.id
         INNER JOIN category ON category.id = article_category.id_category
         WHERE article. ' . $this->primaryKey . ' = :id LIMIT 1' ;
        $sth = $this->dbh->prepare($sql);
        $sth->bindValue(':id', $id);
        $sth->execute();

        return $sth->fetch();
    }
}
