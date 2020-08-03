<?php
/**
 * PHP Version 5
 * Application Router
 *
 * @category Router
 * @package  Router
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @author   Luis Fernando Gomez Figueroa <lgomezf16@gmail.com>
 * @license  Comercial http://
 *
 * @version 1.0.0
 *
 * @link http://url.com
 */
session_start();

require_once "libs/utilities.php";

$pageRequest = "principal";

if (isset($_GET["page"])) {
    $pageRequest = $_GET["page"];
}

//Incorporando los midlewares son codigos que se deben ejecutar
//Siempre
require_once "controllers/mw/verificar.mw.php";
require_once "controllers/mw/site.mw.php";

// aqui no se toca jajaja la funcion de este index es
// llamar al controlador adecuado para manejar el
// index.php?page=modulo

    //Este switch se encarga de todo el enrutamiento público
switch ($pageRequest) {
    //Accesos Publicos
case "principal":
  include_once "controllers/principal.control.php";
  die();
case "home":
    //llamar al controlador
    include_once "controllers/home.control.php";
    die();
case "login":
    include_once "controllers/security/login.control.php";
    die();
case "logout":
    include_once "controllers/security/logout.control.php";
    die();
case "acerca":
    include_once "controllers/acerca.control.php";
    die();
case "docentes":
    include_once "controllers/docentes.control.php";
    die();
case "nosotros":
    include_once "controllers/nosotros.control.php";
    die();
case "contacto":
    include_once "controllers/contacto.control.php";
    die();
case "carreras":
  include_once "controllers/carreras.control.php";
  die();
case "electronica":
  include_once "controllers/electronica.control.php";
  die();
case "madera":
  include_once "controllers/madera.control.php";
  die();
case "industrial":
  include_once "controllers/industrial.control.php";
  die();
case "electricidad":
  include_once "controllers/electricidad.control.php";
  die();
case "extensiones":
  include_once "controllers/extensiones.control.php";
  die();
case "investigaciones":
  include_once "controllers/investigaciones.control.php";
  die();
case "eventos":
  include_once "controllers/eventos.control.php";
  die();
case "registro":
  include_once "controllers/registro.control.php";
  die();
  }

//Este switch se encarga de todo el enrutamiento que ocupa login
$logged = mw_estaLogueado();
if ($logged) {
    addToContext("layoutFile", "verified_layout");
    include_once 'controllers/mw/autorizar.mw.php';
    if (!isAuthorized($pageRequest, $_SESSION["userCode"])) {
        include_once"controllers/notauth.control.php";
        die();
    }
    generarMenu($_SESSION["userCode"]);
}

require_once "controllers/mw/support.mw.php";
switch ($pageRequest) {
case "dashboard":
    ($logged)?
      include_once "controllers/dashboard.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "users":
    ($logged)?
      include_once "controllers/security/users.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "user":
    ($logged)?
      include_once "controllers/security/user.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "roles":
    ($logged)?
      include_once "controllers/security/roles.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "rol":
    ($logged)?
      include_once "controllers/security/rol.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "programas":
    ($logged)?
      include_once "controllers/security/programas.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "programa":
    ($logged)?
      include_once "controllers/security/programa.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "categorias":
    ($logged)?
      include_once "controllers/categorias.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "categoria":
    ($logged) ?
      include_once "controllers/categoria.control.php" :
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "almacenes":
    ($logged) ?
      include_once "controllers/almacenes.control.php" :
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "almacen":
    ($logged) ?
      include_once "controllers/almacen.control.php" :
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "almacenes2":
  ($logged) ?
    include_once "controllers/almacenes2.control.php" :
    mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "almacen2":
    ($logged) ?
    include_once "controllers/almacen2.control.php" :
    mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();

}

addToContext("pageRequest", $pageRequest);
require_once "controllers/error.control.php";
