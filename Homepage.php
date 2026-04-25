<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--Bootstrap Javascript-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!-- Icons CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <title>Monumenti Catanzaro</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">

    

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      

      #immagini{
        width:1100px;
        height:550px;
      }

      #contenitore{
        margin-left: 19%;
        margin-right: 19%;
       }

       #carusello{
        margin-bottom: 2%;
        margin-top: 5%;
       }

       #bot{
        text-decoration: none; 
        color: red;
       }

       #bot:hover{
        color: white;
       }
      @media (max-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }

        #immagini{
          width:400px;
          height:250px;

       }


       #contenitore{
        margin-left: 5%;
        margin-right: 5%;
       }
      }
    </style>

    
  </head>
  <body>

    <?php 

      $host = "localhost";
        $user = "root";
        $password = "";
      $db="monumenti";
      $connessione = new mysqli($host, $user, $password, $db);
      if ($connessione->connect_errno) {
        echo "Connessione fallita: ". $connessione->connect_error . ".";
          exit();
      }

    ?>
    
<header style="background-color: #400000">
  <div class="collapse" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">Smart City</h4>
          <p class="text-white">Una smart city è una città intelligente che integra tecnologie digitali nelle proprie reti, servizi e infrastrutture. Ciò significa reti di trasporto urbano intelligenti, servizi di distribuzione dell'acqua e di raccolta rifiuti potenziati, e modi più efficienti per illuminare e riscaldare gli edifici.</p>
        </div>
        
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark  shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <img src="img/Catanzaro-Stemma.png" width="50" height="60">
        <strong>&nbsp&nbspCatanzaro</strong>
      </a>
      
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>
<main>
<div align="center" style="margin-top: 3%;">
  <img src="img/logo.png" width="200px" height="80px">
</div>

<div id="contenitore">
  <div  align="center" id="carusello">

    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="width: 100%">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/ponte.jpg" id="immagini" alt="...">
        </div>
        <div class="carousel-item">
          <img src="img/cz.jpg" id="immagini" alt="...">
        </div>
        <div class="carousel-item">
          <img src="img/corso.jpg" id="immagini" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    
  </div>
  <div style="margin-right: 15%; margin-left: 15%;">
<p align="center">
  <h4 align="center" style="font-family: 'Arial Black', serif;">
  <strong>La nostra Città</strong>
  </h4>
</p>
<p style="margin-bottom: 4%;" align="center">
  Catanzaro è conosciuta come la <b>"Città tra due mari"</b>, in quanto è situata nell'istmo di Catanzaro, ovvero la striscia di terra più stretta d'Italia, dove soli 30 km separano <b>il Mar Ionio dal Mar Tirreno</b>. Ciò consente di vedere contemporaneamente, dai quartieri nord della città in alcune giornate particolarmente limpide, i due mari e le isole Eolie. È detta inoltre <b>Città dei tre colli</b> corrispondenti ai tre colli rappresentati nello stemma civico che sono il <b>colle di San Trifone (oggi San Rocco), il colle del Vescovato (oggi Piazza Duomo) e il colle del Castello (oggi San Giovanni)</b>.<br>
  
</p>

<p align="center">
  <h4 align="center" style="font-family: 'Arial Black', serif; margin-bottom: 5%;">
  <strong>Monumenti di Catanzaro</strong>
  </h4>
</div>
  <div class="album">

      <!--inizio card-->
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <?php
          for ($i=1; $i < 7; $i++) { 
            $id1 = $i+6;
            $query="SELECT * FROM monumenti WHERE id = $i"; 
            $ris_query = $connessione->query($query);
            if ($ris_query->num_rows > 0) {
                $riga = $ris_query->fetch_assoc();
              }

            $query1="SELECT * FROM monumenti WHERE id1 = $id1"; 
            $ris_query1 = $connessione->query($query1);
            if ($ris_query1->num_rows > 0) {
                $riga1 = $ris_query1->fetch_assoc();
              }
            
          echo '
                <div class="col">
                  <div class="card shadow-sm" style="height:425px;">
                    <img src="'.$riga["immagine"].'" width="100%" height="225">

                    <div class="card-body" style="background-color:#e0e0e0;">
                      <strong>'.$riga["nome"].'</strong>
                      <p class="card-text">'.$riga["descrizione"].'</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop'.$riga["id"].'" >Vedi altro</button> &nbsp  

                          <button type="button" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop'.$riga1["id1"].'" >See more</button> 

                        </div>
                        
                      </div>
                    </div>
                  </div>            
                </div>  
             


              <div class="modal fade" id="staticBackdrop'.$riga["id"].'" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h3 class="modal-title" id="staticBackdropLabel">'.$riga["nome"].'</h3>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <div class="row">
                        <img src="'.$riga["immagine"].'" width="100%" style="margin-top:2%; margin-bottom:3%;">                   
                      </div>

                      <div class="row">
                        <h4>Storia</h4><br>
                        <p>'.$riga["storia"].'</p>
                      </div>
                      <div class="row">
                        <h4> Curiosità</h4><br>
                        <p>'.$riga["curiosita"].'</p>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Chiudi</button>
                      
                    </div>
                  </div>
                </div>
              </div>



              <div class="modal fade" id="staticBackdrop'.$riga1["id1"].'" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h3 class="modal-title" id="staticBackdropLabel">'.$riga1["nome"].'</h3>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <div class="row">
                        <img src="'.$riga1["immagine"].'" width="100%" style="margin-top:2%; margin-bottom:3%;">                   
                      </div>

                      <div class="row">
                        <h4>History</h4><br>
                        <p>'.$riga1["storia"].'</p>
                      </div>
                      <div class="row">
                        <h4>Curiosity</h4><br>
                        <p>'.$riga1["curiosita"].'</p>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      
                    </div>
                  </div>
                </div>
              </div>
            ';
          }
        ?>

              
			</div>
  </div>
</div>

</main>

<footer class="text-muted py-5">
  <div style="margin-left: 10%; margin-right: 10%;">
    <p class="float-end mb-1">
      <button class="btn btn btn-sm btn-outline-danger "><a href="#" id="bot">Torna in cima</a></button>
    </p>
    <p class="mb-1"><b>ITTS Ercolino Scalfaro</b> <a href="https://www.ittsscalfaro.edu.it/" target="_blank"> <img src="img/senzanome.png" height="50" width="50"> </a> - Anno scolastico 2021/2022</p>
    <p class="mb-0">Lavoro a cura di <b>Mazza Andrea</b>.</p>
  </div>
</footer>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>
