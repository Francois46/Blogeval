<?php $conn = new PDO('mysql:host=localhost;dbname=base1;charset=utf8;port3308','root','',[]);
$req = $conn->prepare("SELECT * FROM categorie ");
$req->execute();
$value = $req->fetchAll(PDO::FETCH_OBJ );
 ?>
<form action="#" method="post" name="searchCategorie">
    <select name="searchCategorie">
    <?php foreach ($value as $categorie) : ?>
    <option value="<?=$categorie->id_categorie?>"><?=$categorie->nom_categorie?></option>
<?php endforeach; ?>
    </select>
<input type="submit" value="Valider">
    
</form>
