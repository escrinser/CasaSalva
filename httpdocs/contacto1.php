<?php ini_set('arg_separator.output','&amp;'); ?>
<?php
require_once('init.php');
$loadClass = SB_Modules::loadClass('Modules_Statistics');
$statisticsObject = new Modules_Statistics('gxux9hq2dpg');
$statisticsObject->init();
$statisticsObject->processAction();
?>
<?php
  // Copyright 2010 Google Inc. All Rights Reserved.

  $GA_ACCOUNT = "MO-20200970-1";
  $GA_PIXEL = "ga.php";

  function googleAnalyticsGetImageUrl() {
    global $GA_ACCOUNT, $GA_PIXEL;
    $url = "";
    $url .= $GA_PIXEL . "?";
    $url .= "utmac=" . $GA_ACCOUNT;
    $url .= "&utmn=" . rand(0, 0x7fffffff);
    $referer = $_SERVER["HTTP_REFERER"];
    $query = $_SERVER["QUERY_STRING"];
    $path = $_SERVER["REQUEST_URI"];
    if (empty($referer)) {
      $referer = "-";
    }
    $url .= "&utmr=" . urlencode($referer);
    if (!empty($path)) {
      $url .= "&utmp=" . urlencode($path);
    }
    $url .= "&guid=ON";
    return str_replace("&", "&amp;", $url);
  }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>Casa Salva - Contacto</title><meta name="DESCRIPTION" content="Contactar con Casa Salva"><meta name="KEYWORDS" content="4X4, ACAMPADA, ACCESIBILIDAD, ACROBÁTICO, ACTIVIDADES, ACTIVO, ADAPTADO, AGROTURISMO, ALBERCA, ALBERGUE, ALOJAMIENTO, ALQUILER, AMBIENTE, AMIGOS, ANIMACIÓN, ANIMAL, ARANDA, ÁRBOLES, ARCO, ARQUITECTURA, ASADO, ASOCIACION, AVENTURA, AYLLÓN, AYUNTAMIENTO, BAR, BARATO, BARBACOA, BARCELONA, BATALLA, BATIPUERTA, BEJAR, BICICLETA, BIKES, BOCEGUILLAS, BODEGA, BOLAS, BOYS, BTT´S, BUILDING, BUNGALOW, BURGOS, CABALLO, CALIDAD, CAMAS, CAMINO, CAMPAMENTO, CAMPING, CAMPO, CARRERA, CASA, CASASALVA, CASARURAL, CASTILLA, CASTILLO, CÁTERING, CENTRO, CIRCUITO, CLASES, CLUBS, COCHINILLO, COLEGIO, COLONIAS, COLUMPIO, COMER, CONVENCIONES, CORDERO, COSTUMBRE, COVATILLA, CUAD, CULTURAL, CURSO, CHICAS, CHIMENEA, DEPORTE, DEPORTIVO, DESCANSAR, DESCANSO, DESPEDIDA, DINÁMICA, DIRECTIVO, DISFRUTAR, DISFRUTE, DRAK, DUERO, DURATÓN, ECOTURISMO, ECUESTRE, EMBALSE, EMBUTIDo, EMPRESA, ENCANTO, ENSUEÑO, EQUITACIÓN, ESCALADA, ESCAPADA, ESCENARIO, ESCOLAR, ESCUELA, ESCURIAL, ESPACIO, ESPAÑA, ESQUÍ, ESTRATEGIA, ESTUDIANTE, ETNOGRÁFICO, EVENTO, EXTRAESCOLAR, FAMILIA, FAMILIAR, FIESTA, FIN, FORMACIÓN, FOTOGRAFÍA, GOLF, GPS, GRANJA, GRUPO, GUERRA, GUÍA, GUIJUELO, HAYEDO, HIJOS, HÍPICA, HÍPICO, HOCES, HOLIDAYS, HOSTAL, HOTEL, HOUSE, HOUSES, IBERICO, IDEA, IGLESIA, INCENTIVO, INFANCIA, INFANTIL, INSTITUTO, INTEGRACIÓN, INTERÉS, INVIERNO, JOVEN, JUGAR, JUVENTUD, KARTING, KARTS, LARINCONADA, LEÓN, LIBRE, LINARES, LUJO, MACIZO, MADERUELO, MADRID, MARCADORA, MAYORES, MEDIEVAL, MEDIO, MENOR, MINI, MINIQUAD, MINUSVÁLIDO, MIRANDA, MOGARRAZ, MONASTERIO, MONITOR, MONTAÑA, MONTAÑISMO, MONTAR, MONUMENTAL, MONUMENTO, MOUNTAIN, MUSEO, NATURAL, NATURALEZA, NAVARREDONDA, NEGROS, NIEVE, NIÑO, NORDESTE, NORTE, OCIO, OFERTA, ORGANIZACIÓN, ORIENTACIÓN, OTOÑO, OUTDOOR, PACK, PADRE, PAINBAL, PAINBOL, PAINBOOL, PAINTBAL, PAINTBAL, PAINTBALL, PAINTBALL, PAINTBOL, PAISAJE, PANTANO, PARAISO, PAREJA, PARQUE, PASEO, PEDRAZA, PEINBALL, PEINBOL, PENSION, PEQUEÑOS, PEQUES, PERSONA, PINBAL, PINBOL, PINBOOL, PINILLA, PINTBAL, PINTBOL, PINTURA, PIRAGUA, PIRAGÜISMO, PLAZA, POSADA, PRECIO, PRECIOS, PROPUESTA, PUEBLO, PUENTE, QUAD, QUEEN, RECREO, REGALO, RELAJACIÓN, RELAJAR, RELAX, RESERVAR, RESERVAS, RESIDENCIA, RESTAURANTE, REUNION, RIAZA, RIBERA, RINCONADA, ROCÓDROMO, ROJOS, ROMÁNICO, RURAL, RURALES, RUSTICO, RUTA, SALA, SALIR, SALUD, SANTA, SANTUARIO, SECUNDARIA, SALAMANCA, SEGOVIANO, SEGURO, SEMANA, SENDERISMO, SENDERO, SEPÚLVEDA, SIERRA, SKI, SNOWBOARD, SOCIAL, SOLTERA, SOLTERO, SORIA, SPAIN, STRIPPERS, TEAM, TEJEDA, TERRENO, TIEMPO, TIRO, TODO, TODOTERRENO, TOURISM, RADICIONAL, TRAINING, TREKKING, TURISMO, VACACIONES, VERANO, VERDE, VIAJAR, VIAJES, VINO, ZONA"><meta name="GENERATOR" content="Parallels Plesk Sitebuilder 4.5.0"><link href="css/styles.css?template=personal-018&colorScheme=green&header=&button=buttons1" rel="stylesheet" type="text/css">
<!-- for FF, Chrome, Opera -->
<link rel="icon" type="image/png" href="/images/Logo-16x16.png" sizes="16x16">
<link rel="icon" type="image/png" href="/images/Logo-32x32.png" sizes="32x32">

<!-- for IE -->
<link rel="icon" type="image/x-icon" href="/images/Logo.ico" >
<link rel="shortcut icon" type="image/x-icon" href="/images/Logo.ico"/>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-20200970-1']);
  _gaq.push(['_trackPageview']);
  _gaq.push(['_trackPageLoadTime']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js">
  {lang: 'es'}
</script>
<link href="https://plus.google.com/100878103860002149383" rel="publisher" />
<script type="text/javascript">
window.___gcfg = {lang: 'es'};
(function() 
{var po = document.createElement("script");
po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
var s = document.getElementsByTagName("script")[0];
s.parentNode.insertBefore(po, s);
})();</script>
<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//v2.zopim.com/?29UvKt6MGxoLFoVCvRM14U9UngTKzEZQ';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!--End of Zopim Live Chat Script-->
</head>
<BODY MARGINHEIGHT="0" MARGINWIDTH="0" TOPMARGIN="0" RIGHTMARGIN="0" BOTTOMMARGIN="0" LEFTMARGIN="0">
<!--Nieve
<script src="scripts/jquery-1.7.1.min.js"></script>
<script src="scripts/snow.js"></script>
<style type="text/css">
	body { background: black; }
</style>
<script type="text/javascript">
$(function() {
    $(document).snow({ SnowImage: "images/effects/snow.gif" });
});
</script>
Nieve-->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="52" background="images/xsk_02.jpg?template=personal-018&colorScheme=green&header=&button=buttons1">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="52" align="center" style="background-image: url(images/htop.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: right bottom; padding-right: 30px; padding-left: 30px;">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center">
									<a href="entorno.php" class="menu">El entorno</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="casa.php" class="menu">La Casa</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="recorridofotografico.php" class="menu">Recorrido Fotográfico</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="actividades.php" class="menu"> Actividades y enlaces de interés</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="comollegar.php" class="menu">Como llegar</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="precios.php" class="menu">Precios</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="lagranja.php" class="menu">La Granja</a>
								</td>
								<td width="25" align="center">
									<img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
								</td>
								<td align="center">
									<a href="contacto.php" class="amenu">Contacto</a>
								</td>
								<td width="125" align="right">
									<a title="Síguenos en Twitter @casa_salva" href="http://twitter.com/casa_salva" target="_blank"><img src="/images/twitter-32.png" alt="Síguenos en Twitter"></a>
								</td>
								<td width="55" align="center">
										<a title="Síguenos en Facebook" href="http://www.facebook.com/CasaRuralCasaSalva" target="_blank"><img src="/images/facebook-32.png" alt="Síguenos en Facebook"></a>
								</td>
                                                                 <td width="55" align="center">
                                                                                <a title="Síguenos en Instagram casasalva.es" href="http://instagram.com/casasalva.es?ref=badge" target="_blank"><img src="/images/instagram.ico" alt="Síguenos en Instagram" /></a>
                                                                </td>
								<td width="45" align="center">
										<a title="Síguenos en Google+" href="https://plus.google.com/u/0/b/100878103860002149383/" target="_blank"><img src="/images/gplus-32.png" alt="Síguenos en Google+"></a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
<tr>
	<td height="254" valign="top" background="images/xsk_10.jpg?template=personal-018&colorScheme=green&header=&button=buttons1">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="37" align="left" valign="top">
					<img src="images/xsk_05.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="254" alt="">
				</td>
				<td width="100%" background="images/xsk_06.jpg?template=personal-018&colorScheme=green&header=&button=buttons1">
					<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
				<td height="254" align="left" valign="bottom" style="background-image: url(images/header.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: right bottom; padding-right: 25px; padding-left: 25px;">
					<div style="width: 160px;">
						<table cellpadding="0" cellspacing="0" border="0">
							<tr valign="bottom">
								<td class="text-header">Contacto</td>
								<td style="padding-left: 5px;">
									<img src="images/xsk_16.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="24" height="22" alt="">
								</td>
							</tr>
						</table>
					</div>
					<br>
				</td>
			</tr>
		</table>
	</td>
	<td width="230" valign="middle" style="background-image: url(images/hleft.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: left bottom; padding-right: 15px; padding-left: 15px;">
		<table width="200" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center">
					<a href="./">
						<img src="images/logo/a9d59187bb761304ef178044d9e6fea3.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" border="0" alt="">
					</a>
				</td>
			</tr>
			<tr>
				<td align="center" class="company">Casa Salva</td>
			</tr>
			<tr>
				<td align="center" class="slogan"></td>
			</tr>
		</table>
		<table width="200" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center">
					<img src="images/spacer.gif?template=personal-018&colorScheme=green&header=&button=buttons1" width="200" height="10">
                                        <img src="images/wifi.jpg" width="86" height="50">
                                        <img src="images/whatsapp.jpg" width="50" height="50"  title="669441817">
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
</td></tr><tr><td valign="top" height="100%"><table border="0" cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;"><tr><td width="37" valign="bottom" background="images/xsk_11.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><img src="images/xsk_14.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="364" alt=""></td><td width="100%" valign="top" bgcolor="#FFFFFF" style="padding-right: 25px; padding-left: 25px;"><table width="100%"><tr><td name="SB_stretch" class="pageContent"><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div><table> 
<tr>
<td>
<a style="font-family: Arial; font-size: medium;">Teléfono: </a> 669441817 / 923450761
<br>
<a style="font-family: Arial; font-size: medium;">Email: </a> reservas@casasalva.es
<br>
Calle Salas Pombo, 20 37607 
La Rinconada de la Sierra, Salamanca
<br><br>
<!--Formulario de contacto-->
<p><span style="font-family: Arial;"><span style="font-size: large;"><b>Formulario de contacto</b></span></span></p>
<p>&nbsp;</p>
<div style="background-color: #7bc21f; width: 523px; padding: 10px;">
<iframe width="503" height="334" src="http://www.escapadarural.com/widget-contacto-visualizar.php?353535|7bc21f|ffffff|7F9DB9|1e34|Nevny|c" scrolling="no" frameborder="0" marginheight="0" marginwidth="0"></iframe>
</div>
<br>
<p><a href="http://www.escapadarural.com/casa-rural/salamanca/casa-salva" title="Casa Salva, de las mejores casas rurales en Salamanca"><img src="http://static.escapadarural.com/files/badges/R14/salamanca.png" alt="Casa Salva, alojamiento rural recomendado en Salamanca (La Rinconada de la Sierra)" width="250" heigth="187"></a> </p>
<!--Botón más uno-->
<g:plusone href="http://www.casasalva.es"></g:plusone> 
<br><br>
<!--Twitter-->
<a href="https://twitter.com/casa_salva" class="twitter-follow-button" data-show-count="false" data-lang="es">Segui @casa_salva</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</td>
<td>
<!--Google+-->
<g:plus href="https://plus.google.com/100878103860002149383" size="badge"></g:plus>
<br>
<!--Facebook-->
<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FCasaRuralCasaSalva&amp;width=292&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=true&amp;header=true&amp;height=590" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:292px; height:590px;" allowTransparency="true"></iframe>
<br><br>
</td>
</tr> 
</table></div><?php
echo $statisticsObject->getContentBlock();
?></td></tr></table></td><td width="228" valign="top" background="images/xsk_19.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><table width="228" border="0" cellspacing="0" cellpadding="0"><tr><td height="362" align="center" valign="top" style="background-image: url(images/xsk_13.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: left top;"><br>
<iframe src="http://www.avaibook.com/widgets_propietarios/loader.php?id=1071&lang=es" style="width: 100px; height: 45px; border: 0" frameborder=0 allowtransparency="allowtransparency">Tu navegador no soporta iframes</iframe><br>
<iframe src="http://www.avaibook.com/widgets_propietarios/loader.php?id=1073&lang=es" style="width: 200px; height: 300px; border: 0" frameborder=0 allowtransparency="allowtransparency">Tu navegador no soporta iframes</iframe><br>
<iframe src="http://www.avaibook.com/widgets_propietarios/opiniones.php?cod_propietario=7295&cod_alojamiento=10065&subtipo=2&color_texto=000000" style="width: 210px; height: 350px; border: 0px;" frameborder="0" allowtransparency="allowtransparency">Tu navegador no soporta iframes</iframe>

<p><a href="http://www.clubrural.com/ofertasweb.php?idAlojamiento=136611" target="_blank"><img src="/images/ofertas-estrellas.gif" alt="Ver ofertas" border="0" /></a></p>
<!-- Begin MailChimp Signup Form -->
<link href="http://cdn-images.mailchimp.com/embedcode/slim-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">#mc_embed_signup{clear:left;font:12px;}</style>
<div id="mc_embed_signup">
<form action="http://casasalva.us4.list-manage1.com/subscribe/post?u=fbf385f3364428e828f14565f&amp;id=4225484fb3" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank">
	<label for="mce-EMAIL"  align="center">Suscr&iacute;bete al newsletter</label>
	<div align="center"><input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Introduce tu email" required></div>
	<div class="clear"  align="center"><input type="submit" value="Enviar" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
</form>
</div>
<!--End mc_embed_signup-->
<table width="176" border="0" cellspacing="0" cellpadding="0"></table></td></tr><tr><td><img src="images/spacer.gif?template=personal-018&colorScheme=green&header=&button=buttons1" width="230" height="8"></td></tr></table></td></tr></table></td></tr><tr><td valign="top" height="47"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td width="37"><img src="images/xsk_21.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="47" alt=""></td><td width="100%" align="left" background="images/xsk_23.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><img src="images/xsk_22.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="511" height="47" alt=""></td><td width="228" bgcolor="#E6E6E6"><img src="images/spacer.gif?template=personal-018&colorScheme=green&header=&button=buttons1" width="230" height="30"></td></tr></table></td></tr><tr><td height="1" align="center" bgcolor="#E6E6E6" style="padding-right: 30px; padding-left: 30px;">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="center"><a href="entorno.php" class="bmenu" id="bmenu1">El entorno</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="casa.php" class="bmenu" id="bmenu2">La Casa</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="recorridofotografico.php" class="bmenu" id="bmenu3">Recorrido Fotográfico</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="actividades.php" class="bmenu" id="bmenu4"> Actividades y enlaces de interés</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="comollegar.php" class="bmenu" id="bmenu5">Como llegar</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="precios.php" class="bmenu" id="bmenu6">Precios</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="lagranja.php" class="bmenu" id="bmenu7">La Granja</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="contacto.php" class="abmenu" id="abmenu">Contacto</a></td></tr></table></td></tr><tr><td height="10" align="center" bgcolor="#E6E6E6" class="footer"><br>C/ Salas Pombo nº 20, 37607 La Rinconada de la Sierra (Salamanca). Tlfno: 923450761/669441817. E-mail: reservas@casasalva.es<div style="width:0px; height:10px;"><span></span></div></td></tr></table><?php
  $googleAnalyticsImageUrl = googleAnalyticsGetImageUrl();
  echo '<img src="' . $googleAnalyticsImageUrl . '" />';?></BODY></HTML>
<?php
$statisticsObject->destruct();
?>