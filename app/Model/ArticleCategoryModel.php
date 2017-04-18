<?php /* app/Model/ArticleModel.php */

namespace Model;

class ArticleCategoryModel extends \W\Model\Model
{

    // on supprime toutes les categories d'un articles
    public function deleteByArticle($id)
    {
      if (!is_numeric($id)){
        return false;
      }

      $sql = 'DELETE FROM ' . $this->table . ' WHERE id_article = :id '; // on enleve le limit 1 pour quil supprime plusieur cat
      $sth = $this->dbh->prepare($sql);
      $sth->bindValue(':id', $id);
      return $sth->execute();

    }
}
