
<?php

    //Recevoir le raccourci
    if(isset($_GET['q'])){

        //Variable
        $shortcut = htmlspecialchars($_GET['q']);

        //Verifier si c'est un vrai raccourci
        $database = new PDO('mysql:host=localhost;dbname=nurly;charset=utf8', "root", '');

        $request = $database->prepare('SELECT COUNT(*) AS x FROM links where shortcut = ?');
        $request->execute(array($shortcut));

        while($result = $request->fetch()){
            if($result['x'] != 1){
                header('location:./?error=true&message=Adresse url non connue');
                exit();
            }
        }
        //Redirection 
        $req = $database->prepare('SELECT * FROM links  WHERE shortcut = ?');
        $req->execute(array($shortcut));
        while($result = $req->fetch()){
            header('location: '.$result['url']);
            exit(); 
        }
    }
    if(isset($_POST['url'])){

        //Variable
        $url = $_POST['url'];
        //Verification si c'est bien une adresse valide (url)
        if(!filter_var($url, FILTER_VALIDATE_URL)){
            //Pas un lien
            header('location:./?error=true&message=Adresse url non valide');
            exit();
        }

        //Shortcut unique

        $shortcut = crypt($url,rand());

        //Si c'est un lien déjà envoyé
        try {
            $database= new PDO('mysql:host=localhost;dbname=nurly;charset=utf8', "root", '');
        } catch(PDOException $error){
            print "Erreur !: ". $error->getMessage()."<br/>";
            die();
        }
        $request = $database->prepare('SELECT COUNT(*) AS x FROM links WHERE url = ?');
        $request->execute(array($url));

        while($result = $request->fetch()){
            if($result['x'] !=0){
//                header('location./index.php?error=true&message=Adresse déjà raccourci !');
                header('location:./?error=true&message=Adresse déjà raccourci !');
                exit();
            }
        }

        //Envoie
        $addToDb = $database->prepare('INSERT INTO links(url, shortcut) VALUES(?, ?)' );
        $addToDb->execute(array($url, $shortcut));

        header('location:./?short='.$shortcut);
        exit();

        

    }

    

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="design/default.css">
    <link rel="icon" type="image/png" href="pictures/favico.png">
    <title>NoruLy</title>
</head>
<body>

<section id="hero" >
    <!--CONTAINER-->
    <div class="container">
        <!--HEADER-->
        <header>

            <img src="pictures/noruly2.svg" alt="" >

</svg>
        </header>
    </div>
        <!--VP-->
        <h1>Une url longue ? Racourcissez-là</h1>
        <h2>Largement meilleur et plus court que les autres.</h2>

        <!--FORM-->
    <form method="post" action="./">
        <input type="url" name="url" placeholder="Collez un lien a raccourcir">
        <input type="submit" value="Raccourcir">
    </form>
    

    <?php
    if(isset($_GET['error']) && isset($_GET['message'])){?>
        <div class="center">
            <div id="result">
                <b><?php echo htmlspecialchars($_GET['message']);?></b>
</div>
</div>
    <?php } else if(isset($_GET['short'])){?>
        <div class="center">
            <div id="result">
                <b>URL RACCOURCI : http://localhost/nurLy/?q=<?php echo htmlspecialchars($_GET['short']);?></b>
            </div>
        </div>
    <?php } ?>

</section>

<section id="brands">
    <div class="container">
        <h3>Ces marques nous font confiance</h3>
        <img src="pictures/1.png" alt="premiere entreprise logo" class="picture">

        <img src="pictures/2.png" alt="logo deuxieme entreprise" class="picture">

        <img src="pictures/3.png" alt="logo troisieme entreprise" class="picture">

        <img src="pictures/4.png" alt="logo quatrieme entreprise" class="picture">

    </div>


</section>
<!--FOOTER-->
<footer>
    <img src="pictures/noruly.svg">
    <p class="copyright"> 2022 &copy; NoruLy Copyright</p>
    <a href="#" class="contact">Contact </a>
    <a href="#" class="contact">- A propos</a>

</footer>


</body>
</html>