
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Aprendiendo PHP</title>
    <link href="https://fonts.googleapis.com/css?family=Proza+Libre" rel="stylesheet">

    <link rel="stylesheet" href="css/estilos.css" media="screen" title="no title">
  </head>
  <body>

    <div class="contenedor">
      <h1>Aprendiendo PHP</h1>

        <div class="contenido">
            <?php 
                $persona = array(
                    'nombre' => 'Juan',
                    'pais' => 'Mexico',
                    'profesion' => 'Desarrollador Web'
                );
             ?>
             <pre>
               <?php print_r($persona); ?>
             </pre>
             
             <?php echo $persona['profesion'];?>
             
             <pre>
               <?php print_r(array_values( $persona ) ); ?>
             </pre>
             
             <pre>
               <?php print_r( array_keys( $persona ) ); ?>
             </pre>
              
             <?php $personas = array();

              if(isset($_POST["nombre"]) && isset($_POST["apellido"]) && isset($_POST["edad"]))
             {
              $personas[]=array(
                "Nombre" => $_POST["nombre"],
                "Apellido"=>$_POST["apellido"],
                "Edad"=> $_POST["edad"]

              );}

             $personas[]=array(
              "Nombre" => "Heydi",
              "Apellido"=>"Maradiaga",
              "Edad"=> 20

            );

            foreach($personas as $person){
              foreach($person as $key => $val){
                echo $key.': '.$val.'<br>';
              }
              echo "<br>";
            }


             ?>


            <pre>
              
            </pre>
             <h1>
               
               <?php 
               
               ?>
             </h1>
             <form action="este.php" method="POST">
               <label for="nombre">Ingresa el nombre:</label>
               <input type="text" name="nombre" id="nombre" ><br>
               <label for="nombre">Ingresa el apellido:</label>
               <input type="text" name="apellido" id="apellido" ><br>
               <label for="nombre">Ingresa la edad:</label>
               <input type="text" name="edad" id="edad" ><br>
               <input type="submit" value="Aceptar">
             </form>

        </div>
    </div>




  </body>
</html>
