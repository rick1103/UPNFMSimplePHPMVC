<?php 

//url aquispe
define('URL_SITIO', 'http://localhost/nw/paypal_FIN');

require 'paypal/autoload.php';

$apiContext = new \PayPal\Rest\ApiContext(
    new \PayPal\Auth\OAuthTokenCredential(
        'AfErSobV2_1PyjfhwJFPCEHxpwcMp3hNapJtZU_BS4Q-ve_pipdowRwfbuX_ja8K1pjgO_4GbAaUZ-nD',     // ClientID
        'EHA0XbY9ZBsOz0OmnBo1HAn2Ex0TAS6JkHZIa42fxW5XGRdtq19tgJ9M5aG_evss4UgrqEDsDuVFSvga'      // ClientSecret
    )
);

