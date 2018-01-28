<?php

function connexion_base() {
    try {
        //$bdd = new PDO('mysql:host=localhost:3306;dbname=ppdmiage_prestamanagement', 'ppdmiage_admin','admin2admin2');
		  $bdd = new PDO('mysql:host=localhost:3306;dbname=belletableevents', 'root', '');
		  $bdd->exec('SET NAMES utf8');
		//$bdd = new PDO('mysql:host=mysql.hostinger.fr:3306;dbname=u102273590_pm', 'u102273590_root', 'root94');

    } catch (Exception $e) {
        echo $e->getMessage();
    }
    return $bdd;
}

function registering($bdd, $nom, $prenom, $mail, $pseudo, $type, $password) {
    try {
		$sql = "INSERT INTO users (Nom, Prenom, Mail, Pseudo, Type, Password) VALUES
		('$nom', '$prenom', '$mail', '$pseudo', '$type', '$password');";
//        echo $sql;
        $sth = $bdd->prepare($sql);
        $sth->execute();

		return $sth;
    } catch (PDOException $e) {
        die('Erreur : ' . $e->getMessage()); // NE PAS AFFICHER L ERREUR AFFICHER UNE AUTRE ERREUR
    }
}

?>
