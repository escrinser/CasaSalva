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
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Casa Salva -  Actividades y enlaces de interés</title>
<meta name="DESCRIPTION" content="Actividades">
<meta name="KEYWORDS" content="4X4, ACAMPADA, ACCESIBILIDAD, ACROBÁTICO, ACTIVIDADES, ACTIVO, ADAPTADO, AGROTURISMO, ALBERCA, ALBERGUE, ALOJAMIENTO, ALQUILER, AMBIENTE, AMIGOS, ANIMACIÓN, ANIMAL, ARANDA, ÁRBOLES, ARCO, ARQUITECTURA, ASADO, ASOCIACION, AVENTURA, AYLLÓN, AYUNTAMIENTO, BAR, BARATO, BARBACOA, BARCELONA, BATALLA, BATIPUERTA, BEJAR, BICICLETA, BIKES, BOCEGUILLAS, BODEGA, BOLAS, BOYS, BTT´S, BUILDING, BUNGALOW, BURGOS, CABALLO, CALIDAD, CAMAS, CAMINO, CAMPAMENTO, CAMPING, CAMPO, CARRERA, CASA, CASASALVA, CASARURAL, CASTILLA, CASTILLO, CÁTERING, CENTRO, CIRCUITO, CLASES, CLUBS, COCHINILLO, COLEGIO, COLONIAS, COLUMPIO, COMER, CONVENCIONES, CORDERO, COSTUMBRE, COVATILLA, CUAD, CULTURAL, CURSO, CHICAS, CHIMENEA, DEPORTE, DEPORTIVO, DESCANSAR, DESCANSO, DESPEDIDA, DINÁMICA, DIRECTIVO, DISFRUTAR, DISFRUTE, DRAK, DUERO, DURATÓN, ECOTURISMO, ECUESTRE, EMBALSE, EMBUTIDo, EMPRESA, ENCANTO, ENSUEÑO, EQUITACIÓN, ESCALADA, ESCAPADA, ESCENARIO, ESCOLAR, ESCUELA, ESCURIAL, ESPACIO, ESPAÑA, ESQUÍ, ESTRATEGIA, ESTUDIANTE, ETNOGRÁFICO, EVENTO, EXTRAESCOLAR, FAMILIA, FAMILIAR, FIESTA, FIN, FORMACIÓN, FOTOGRAFÍA, GOLF, GPS, GRANJA, GRUPO, GUERRA, GUÍA, GUIJUELO, HAYEDO, HIJOS, HÍPICA, HÍPICO, HOCES, HOLIDAYS, HOSTAL, HOTEL, HOUSE, HOUSES, IBERICO, IDEA, IGLESIA, INCENTIVO, INFANCIA, INFANTIL, INSTITUTO, INTEGRACIÓN, INTERÉS, INVIERNO, JOVEN, JUGAR, JUVENTUD, KARTING, KARTS, LARINCONADA, LEÓN, LIBRE, LINARES, LUJO, MACIZO, MADERUELO, MADRID, MARCADORA, MAYORES, MEDIEVAL, MEDIO, MENOR, MINI, MINIQUAD, MINUSVÁLIDO, MIRANDA, MOGARRAZ, MONASTERIO, MONITOR, MONTAÑA, MONTAÑISMO, MONTAR, MONUMENTAL, MONUMENTO, MOUNTAIN, MUSEO, NATURAL, NATURALEZA, NAVARREDONDA, NEGROS, NIEVE, NIÑO, NORDESTE, NORTE, OCIO, OFERTA, ORGANIZACIÓN, ORIENTACIÓN, OTOÑO, OUTDOOR, PACK, PADRE, PAINBAL, PAINBOL, PAINBOOL, PAINTBAL, PAINTBAL, PAINTBALL, PAINTBALL, PAINTBOL, PAISAJE, PANTANO, PARAISO, PAREJA, PARQUE, PASEO, PEDRAZA, PEINBALL, PEINBOL, PENSION, PEQUEÑOS, PEQUES, PERSONA, PINBAL, PINBOL, PINBOOL, PINILLA, PINTBAL, PINTBOL, PINTURA, PIRAGUA, PIRAGÜISMO, PLAZA, POSADA, PRECIO, PRECIOS, PROPUESTA, PUEBLO, PUENTE, QUAD, QUEEN, RECREO, REGALO, RELAJACIÓN, RELAJAR, RELAX, RESERVAR, RESERVAS, RESIDENCIA, RESTAURANTE, REUNION, RIAZA, RIBERA, RINCONADA, ROCÓDROMO, ROJOS, ROMÁNICO, RURAL, RURALES, RUSTICO, RUTA, SALA, SALIR, SALUD, SANTA, SANTUARIO, SECUNDARIA, SALAMANCA, SEGOVIANO, SEGURO, SEMANA, SENDERISMO, SENDERO, SEPÚLVEDA, SIERRA, SKI, SNOWBOARD, SOCIAL, SOLTERA, SOLTERO, SORIA, SPAIN, STRIPPERS, TEAM, TEJEDA, TERRENO, TIEMPO, TIRO, TODO, TODOTERRENO, TOURISM, RADICIONAL, TRAINING, TREKKING, TURISMO, VACACIONES, VERANO, VERDE, VIAJAR, VIAJES, VINO, ZONA">
<meta name="GENERATOR" content="Parallels Plesk Sitebuilder 4.5.0">
<link href="css/styles.css?template=personal-018&colorScheme=green&header=&button=buttons1" rel="stylesheet" type="text/css">
<!-- for FF, Chrome, Opera -->
<link rel="icon" type="image/png" href="/images/Logo-16x16.png" sizes="16x16">
<link rel="icon" type="image/png" href="/images/Logo-32x32.png" sizes="32x32">

<!-- for IE -->
<link rel="icon" type="image/x-icon" href="/images/Logo.ico" >
<link rel="shortcut icon" type="image/x-icon" href="/images/Logo.ico"/>
<link rel="stylesheet" type="text/css" href="http://www.minube.com/owners/css" />
<link href="css/least.min.css" rel="stylesheet" />
<link href="css/prism.min.css" rel="stylesheet" />		
<script>
	(function(doc) { 
		doc.className = doc.className.replace(/(^|\b)no\-js(\b|$)/, 'js');
	}(document.documentElement));
</script>
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
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0"><tr><td height="52" background="images/xsk_02.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td height="52" align="center" style="background-image: url(images/htop.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: right bottom; padding-right: 30px; padding-left: 30px;">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="center"><a href="entorno.php" class="menu">El entorno</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="casa.php" class="menu">La Casa</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="recorridofotografico.php" class="menu">Recorrido Fotográfico</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="actividades.php" class="amenu"> Actividades y enlaces de interés</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="comollegar.php" class="menu">Como llegar</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="precios.php" class="menu">Precios</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="lagranja.php" class="menu">La Granja</a></td><td width="25" align="center"><img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1"></td>
<td align="center"><a href="contacto.php" class="menu">Contacto</a></td>
<td width="125" align="right">
		<a title="Síguenos en Twitter @casa_salva" href="http://twitter.com/casa_salva" target="_blank"><img src="/images/twitter-32.png" alt="Síguenos en Twitter @casa_salva"></a>
</td>
<td width="55" align="center">
		<a title="Síguenos en Facebook" href="http://www.facebook.com/CasaRuralCasaSalva" target="_blank"><img src="/images/facebook-32.png" alt="Síguenos en Facebook"></a>
</td>
<td width="55" align="center">
               <a title="Síguenos en Instagram casasalva.es" href="http://instagram.com/casasalva.es?ref=badge" target="_blank"><img src="/images/instagram.ico" alt="Síguenos en Instagram casasalva.es" /></a>
</td>
<td width="45" align="center">
		<a title="Síguenos en Google+" href="https://plus.google.com/u/0/b/100878103860002149383/" target="_blank"><img src="/images/gplus-32.png" alt="Síguenos en Google+"></a>
</td></tr></table></td></tr></table></td></tr><tr><td height="254" valign="top" background="images/xsk_10.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td width="37" align="left" valign="top"><img src="images/xsk_05.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="254" alt=""></td><td width="100%" background="images/xsk_06.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0"><tr><td height="254" align="left" valign="bottom" style="background-image: url(images/header.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: right bottom; padding-right: 25px; padding-left: 25px;"><div style="width: 160px;"><table cellpadding="0" cellspacing="0" border="0"><tr valign="bottom"><td class="text-header"> Actividades y enlaces de interés</td><td style="padding-left: 5px;"><img src="images/xsk_16.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="24" height="22" alt=""></td></tr></table></div><br></td></tr></table></td><td width="230" valign="middle" style="background-image: url(images/hleft.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: left bottom; padding-right: 15px; padding-left: 15px;"><table width="200" border="0" cellspacing="0" cellpadding="0"><tr><td align="center"><a href="./"><img src="images/logo/a9d59187bb761304ef178044d9e6fea3.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" border="0" alt=""></a></td></tr><tr><td align="center" class="company">Casa Salva</td></tr><tr><td align="center" class="slogan"></td></tr></table>
<table width="200" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="center">
<img src="images/spacer.gif?template=personal-018&colorScheme=green&header=&button=buttons1" width="200" height="10">
<img src="images/wifi.jpg" width="86" height="50">
<img title="669441817" src="images/whatsapp.jpg" width="50" height="50" alt="669441817" >
</td></tr></table></td></tr></table></td></tr><tr><td valign="top" height="100%"><table border="0" cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;"><tr><td width="37" valign="bottom" background="images/xsk_11.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><img src="images/xsk_14.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="364" alt=""></td><td width="100%" valign="top" bgcolor="#FFFFFF" style="padding-right: 25px; padding-left: 25px;"><table width="100%"><tr><td name="SB_stretch" class="pageContent"><p>&nbsp;</p>
<p><span style="font-size: medium;">
<span style="font-family: Arial;">La <strong>Rinconada</strong> de la Sierra</span></span>&nbsp;</p>
<div><a style="font-size: small;" href="http://boards5.melodysoft.com/larinconadadelasierra/1.html" target="Foro de Rinconada">Foro de La Rinconada de la Sierra</a></div>
<p style="margin-left: 40px;">&nbsp;</p>
<div><a style="font-size: small;" href="http://www.escapadarural.com/pueblos/salamanca_la-rinconada-de-la-sierra" target="Rinconada">Otros datos de interés del pueblo</a></div>
<br>
</div>
<div><span style="font-size: medium;"><span style="font-family: Arial;">Actividades en los alredores</span></span><span style="font-size: small;"><span style="font-family: Arial;"> </span></span></div>
<div>&nbsp;</div>
<div><span style="font-size: small;"><span style="font-family: Arial;"><a style="font-size: small;" href="http://www.caballosensalamanca.com" target="Caballos">Rutas a caballo</a><br />
</span></span></div>
<div><span style="font-size: small;"><span style="font-family: Arial;">Paintball </span></span></div>
<div><span style="font-size: small;"><span style="font-family: Arial;"><a style="font-size: small;" href="http://www.sierradebejar-lacovatilla.com" target="LaCovatilla">Estación de esquí en La Covatilla (esquí y snowboard)</a> </span></span></div>
<div><span style="font-size: small;"><span style="font-family: Arial;">Toros de lidia (El Puerto de la Calderilla)</span></span></div>
<div>&nbsp;</div>
       <!-- jquery & lib-->
	<script src="scripts/jquery.min.v2.01.js"> </script>
        <script src="scripts/least.js"></script>
	<script src="scripts/prism.js"></script>
<div>&nbsp;</div>
	 <!-- Gallery actividades -->
        <section>
            <ul id="gallery">
            
                <li id="fullPreview"></li>
                
                <!-- 1 -->
                <li>
                    <a href="images/zoom/18.jpg"></a>
                    <img data-original="images/thumb/18.jpg" src="images/effects/white.gif" width="240" height="150" alt="Caballos" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Caballos   
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="projectInfo">
                        Inolvidables paseos a caballo por la <strong>Sierra de Francia</strong>.<a style="font-size: medium;" href="http://www.caballosensalamanca.com" target="Caballos">Rutas a caballo en Tamames</a> 
                    </div>
                </li>
                <!-- 19 -->
                <!--<li>
                    <a href="images/zoom/19.jpg"></a>
                    <img data-original="images/thumb/19.jpg" src="images/effects/white.gif" width="240" height="150" alt="Caballos" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Caballos     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Rutas a caballo</strong> en Tamames. Inolvidables paseos a caballo por la Sierra de Francia.
                    </p>
                </li>
                -->
                <!-- 20 -->
                <!--<li>
                    <a href="images/zoom/20.jpg"></a>
                    <img data-original="images/thumb/20.jpg" src="images/effects/white.gif" width="240" height="150" alt="Paintball" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Paintball     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Paintball</strong> en Navarredonda. Para pasar un rato divertido esta actividad está disponible a 1km del pueblo.
                    </p>
                </li>-->
	        <!-- 21 -->
                <li>
                    <a href="images/zoom/21.jpg"></a>
                    <img data-original="images/thumb/21.jpg" src="images/effects/white.gif" width="240" height="150" alt="Paintball" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Paintball     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Paintball</strong> en Navarredonda. Para pasar un rato divertido esta actividad está disponible a 1km del pueblo.
                    </p>
                </li>
	        <!-- 22 -->
                <li>
                    <a href="images/zoom/22.jpg"></a>
                    <img data-original="images/thumb/22.jpg" src="images/effects/white.gif" width="240" height="150" alt="Pico Cervero" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Pico Cervero     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">                                            
                        Senderismo, mountain bike o en coche son perfectos para la ruta al <strong>Pico Cervero (1463 metros)</strong> y la Cueva de la Mora. 
			<a style="font-size: medium;" href="http://www.verquehacer.com/salamanca/index.php/Rutas-locales/ruta-linares-de-riofrio-pico-cervero.html" target="PicoCervero">Pico Cervero en Las Quilamas</a>                     
                    </p>
                </li>
		<!-- 23 -->
                <li>
                    <a href="images/zoom/23.jpg"></a>
                    <img data-original="images/thumb/23.jpg" src="images/effects/white.gif" width="240" height="150" alt="Piscina natural" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Piscinas naturales     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Piscinas naturales</strong> en La Bastida y El Carrero. Pozas naturales en ambientes insólitos de la Sierra de Francia.
                    </p>
                </li>
		<!-- 24 -->
                <!--<li>
                    <a href="images/zoom/24.jpg"></a>
                    <img data-original="images/thumb/24.jpg" src="images/effects/white.gif" width="240" height="150" alt="Esquí y snowboardl" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Esquí y snowboard     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Esquí y snowboard</strong> en La Covatilla. <a style="font-size: medium;" href="http://www.sierradebejar-lacovatilla.com/" target="LaCovatilla">Esquí y snowboard en La Covatilla</a>
                    </p>
                </li>-->
<!-- ParqueAventuras -->
                <li>
                    <a href="images/zoom/parqueAventurasLaAlberca.jpg"></a>
                    <img data-original="images/thumb/parqueAventurasLaAlberca_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="Parque de Aventuras" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Parques de Aventuras     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Parques de aventuras</strong> en La Alberca. Parque de aventuras, tiro con arco, bicicletas de montaña y ginkanas.<a style="font-size: medium;" href="http://www.laalberca.com/guiaweb/parqueaventura/parque-aventura.html" target="ParqueAventuras">Parque de aventuras</a>
                    </p>
                </li>
				<!-- Buggies -->
                <li>
                    <a href="images/zoom/buggiesFuentes.jpg"></a>
                    <img data-original="images/thumb/buggiesFuentes_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="Buggies" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Buggies y Quads     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Rutas en buggies y quads</strong> en La Fuente de San Esteban y Escurial de la Sierra.<a style="font-size: medium;" href="http://www.spamarenostrum.com/rutas-buggy.php" target="RutasBuggies">Rutas en buggies y quads</a>
                    </p>
                </li>
                <!-- CieloEstrellado -->
                <li>
                    <a href="images/zoom/cielo-estrellado_resized_960.jpg"></a>
                    <img data-original="images/thumb/cielo-estrellado_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="CieloEstrellado" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Cielo estrellado   
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="projectInfo">
                        Zona impecable para ver las <strong>estrellas</strong> por la escasa contaminación lumínica. En la montaña o desde el mismo jardín de la casa disfrutarás de todas las constelaciones en su máximo explendor. 
                    </div>
                </li>
                <!-- ToroBravo -->
                <li>
                    <a href="images/zoom/toroBravo.JPG"></a>
                    <img data-original="images/thumb/toroBravo_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="ToroBravo" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Toros Bravos   
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="projectInfo">
                        <strong>Ganadería El Pilar</strong> en El Puerto de la Calderilla pone al alcance de los amantes del toro bravo una fascinante experiencia, ofreciéndoles la oportunidad de comprobar en primera persona la imponente belleza  del toro de lidia en su hábitat natural.<a style="font-size: medium;" href="http://www.ganaderiaelpilar.es/index.php?Carga=visitar_ganaderia" target="TorosBravos">Ganadería de Toros Bravos "El Pilar"</a> 
                    </div>
                </li>      
            </ul>
        </section>
        <!-- / Gallery -->

        <script>
        $(document).ready(function(){
            $('#gallery').least();


            /* layer fade in */
            $('.layer').delay('5000').fadeIn();

            /* hide layer */
            $('.close').on(
                'click', 
                function(event) {
                    event.preventDefault();

                    $('.layer').fadeOut();
                }
            );

            $(document).keydown(function(event) {
                if(event.keyCode === 27){ $('.layer').fadeOut(); }
            });
        });
        </script>

<p><span style="font-size: medium;"><span style="font-family: Arial;">Salamanca y provincia</span></span></p>
<p>&nbsp;</p>
<p><div><a style="font-size: small;" href="http://www.salamanca.es/" target="Salamancal">Salamanca: Plaza Mayor, Casa de las Conchas, Catedrales, Puente Romano, Huerto de Calisto y Melibea y Museo Casa Lis entre otros (a 56 km).</a></div></p>
<p><div><span style="font-size: small;"><span style="font-family: Arial;"><strong>Candelario:</strong> precioso pueblo de media monta&ntilde;a pr&oacute;ximo a  B&eacute;jar (a 54 km). Estaci&oacute;n de esqu&iacute; de La Covatilla.  </span></span></div></p>
<p><div><span style="font-size: small;"><span style="font-family: Arial;"><strong>Ciudad Rodrigo:</strong> ciudad medieval amurallada con fabuloso  centro hist&oacute;rico (a 64 km por autov&iacute;a).  </span></span></div></p>
<p><div><a style="font-size: small;" href="http://www.laalberca.com/" target="LaAlberca">La Alberca</a>:<span style="font-size: small;"><span style="font-family: Arial;"> pueblo de inter&eacute;s tur&iacute;stico pr&oacute;ximo a la Sierra  de Francia con rutas entre robledales y casta&ntilde;os centenarios. Otras villas  pr&oacute;ximas son Mogarraz,  Miranda del Castañar y San Martín del Castañar (a 30 km).</span></span></div></p>
<p><div><span style="font-size: small;"><span style="font-family: Arial;"><strong>Alba de Tormes:</strong> famosa por sus monasterios e iglesias. Aqu&iacute;  se encuentra el sepulcro de Santa Teresa de Jes&uacute;s (a 60 km).  </span></span></div></p>
<p><div><span style="font-size: small;"><span style="font-family: Arial;"><strong>Los Arribes del Duero y fortalezas de la frontera  hispano-lusa</strong> (a 100 km).</span></span><span style="font-size: small;"><span style="font-family: Arial;"><strong> </strong></span></span></div></p>

 <!-- Gallery sitios -->
<br><br>
        <section>
            <ul id="gallerysitios">
            
                <li id="fullPreviewSergio"></li>
              
                <li>
                    <a href="images/zoom/salamanca.jpg"></a>
                    <img data-original="images/thumb/salamanca_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="Salamanca" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Salamanca   
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="projectInfo">
                        <strong>Salamanca (a 56 km)</strong>: La Plaza Mayor, la Casa de las Conchas, las Catedrales, el Puente Romano, el Huerto de Calisto y Melibea, el Museo Casa Lis y la zona de pinchos de Van Dyck. <a style="font-size: medium;" href="http://www.salamanca.es/es/" target="Salamanca">Salamanca</a>
                    </div>
                </li>
                <li>
                    <a href="images/zoom/laAlbercaCruz_resized_960.jpg"></a>
                    <img data-original="images/thumb/laAlbercaCruz_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="LaAlberca" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    La Alberca     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>La Alberca</strong> pueblo de interés turístico en la Sierra de Francia con rutas entre robledales y castaños centenarios.<a style="font-size: medium;" href="http://www.laalberca.com/" target="LaAlberca">La Alberca - Sierra de Francia</a>
                    </p>
                </li>
                <li>
                    <a href="images/zoom/casa-rural-casa-salva-philippe-mingo-mogarraz-calleja_resized_960.jpg"></a>
                    <img data-original="images/thumb/casa-rural-casa-salva-philippe-mingo-mogarraz-calleja_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="Mogarraz" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Mogarraz     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Mogarraz</strong> pueblo de interés turístico en la Sierra de Francia. Calles estrechas de arquitectura serrana. Museo de retratos de Florencio Maillo.<a style="font-size: medium;" href="http://www.mogarraz.es/" target="Mogarraz">Mogarraz - Sierra de Francia</a>
                    </p>
                </li>
                <li>
                    <a href="images/zoom/casa-rural-casa-salva-philippe-mingo-cabras-montesas-cruz-pena-francia_resized_960.jpg"></a>
                    <img data-original="images/thumb/casa-rural-casa-salva-philippe-mingo-cabras-montesas-cruz-pena-francia_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="PenaFrancia" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Peña de Francia     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        El mirador de la <strong>Peña de Francia (1727 metros)</strong>.Desde su cima, se divisa toda la llanura del Campo Charro hacia el norte, la Sierra de Tamames hacia el este, y el pantano de Gabriel y Galán hacia el sur, aparte del resto del macizo montañoso. Son famosas la cabras montesas en la parte alta del pico. 
                    </p>
                </li>
                <li>
                    <a href="images/zoom/ciudadRodrigo_resized_960.jpg"></a>
                    <img data-original="images/thumb/ciudadRodrigo_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="CiudadRodrigo" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Ciudad Rodrigo     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Ciudad Rodrigo</strong> ciudad medieval amurallada con fabuloso centro histórico (a 64 km por autovía).<a style="font-size: medium;" href="http://www.ciudadrodrigo.net/index.php" target="CiudadRodrigo">Ciudad Rodrigo</a>
                    </p>
                </li>
                <li>
                    <a href="images/zoom/batipuerta.jpg"></a>
                    <img data-original="images/thumb/batipuerta_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="Candelario" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Candelario     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Candelario</strong> precioso pueblo de media montaña próximo a Béjar (a 54 km), famoso por las batipuertas.<a style="font-size: medium;" href="http://www.candelario.es/" target="Candelario">Candelario</a>
                    </p>
                </li>
                <li>
                    <a href="images/zoom/presa2_resized_960.jpg"></a>
                    <img data-original="images/thumb/presa2_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="ArribesDuero" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Arribes del Duero     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        El parque natural de <strong>Arribes del Duero</strong> es un espacio natural protegido. En casi toda la zona protegida, los cursos fluviales de los ríos Duero y Águeda hacen de frontera natural entre España y Portugal. Los grandes desniveles de la zona, el alto caudal del Duero y los numerosos ríos que en él desembocan, convierten al parque en uno de los puntos de mayor potencial hidroeléctrico de toda la península ibérica. Por ello, se ha ido construyendo una red de presas y embalses conocida como Saltos del Duero.
                    </p>
                </li>
		                <li>
                    <a href="images/zoom/casa-rural-casa-salva-mogarraz-retrato-mujer_resized_960.jpg"></a>
                    <img data-original="images/thumb/casa-rural-casa-salva-mogarraz-retrato-mujer_resized_240.jpg" src="images/effects/white.gif" width="240" height="150" alt="Mogarraz" />
                    
                    <div class="overLayer"></div>
                    <div class="infoLayer">
                        <ul>
                            <li>
                                <h2>
                                    Mogarraz     
                                </h2>
                            </li>
                            <li>
                                <p>
                                    Ver Foto
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    <p class="projectInfo">
                        <strong>Mogarraz</strong> pueblo de interés turístico en la Sierra de Francia. Calles estrechas de arquitectura serrana. Museo de retratos de Florencio Maillo.<a style="font-size: medium;" href="http://www.mogarraz.es/" target="Mogarraz">Mogarraz - Sierra de Francia</a>
                    </p>
                </li>
                <li>		
                            
            </ul>
        </section> 

        <script>
        $(document).ready(function(){
            $('#gallerysitios').leastsergio();


            /* layer fade in */
            $('.layer').delay('5000').fadeIn();

            /* hide layer */
            $('.close').on(
                'click', 
                function(event) {
                    event.preventDefault();

                    $('.layer').fadeOut();
                }
            );

            $(document).keydown(function(event) {
                if(event.keyCode === 27){ $('.layer').fadeOut(); }
            });
        });
        </script>
<p>&nbsp;<p><a href="http://www.escapadarural.com/casa-rural/salamanca/casa-salva" title="Casa Salva, de las mejores casas rurales en Salamanca"><img src="http://static.escapadarural.com/files/badges/R14/salamanca.png" alt="Casa Salva, alojamiento rural recomendado en Salamanca (La Rinconada de la Sierra)" width="250" heigth="187"></a> </p></p>
<br><br>
<div><script type="text/javascript" src="https://apis.google.com/js/plusone.js">
  {lang: 'es'}
</script>
<g:plusone href="http://www.casasalva.es"></g:plusone>
<!--Twitter-->
<a href="https://twitter.com/casa_salva" class="twitter-follow-button" data-show-count="false" data-lang="es">Segui @casa_salva</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
<br><br>
<iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FCasaRuralCasaSalva&amp;send=false&amp;layout=standard&amp;width=450&amp;show_faces=true&amp;action=like&amp;colorscheme=light&amp;font&amp;height=80" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:450px; height:80px;" allowTransparency="true"></iframe>
</div>
<!--Enlaces-->
<div>
<!--Niumba sacar web y url de reservas-->
<!--<a title="En Niumba alquila apartamentos de vacaciones y casas rurales" href="http://www.niumba.com/"><img alt="En Niumba alquila apartamentos de vacaciones y casas rurales" src="http://images.niumba.com/images/web/comun/logo_home2.gif"></a>
Encuentra en Niumba la mayor oferta en alquiler de apartamentos y casas rurales. Estas vacaciones descubre 
<a href="http://www.niumba.com/castilla-y-leon/salamanca/casas-rurales" target="_blank" title="Casas rurales Salamanca">Casas rurales Salamanca</a>-->
<!--End Niumba-->
<br><br>
<!--Turismoestelar.com-->
<a href="http://www.turismoestelar.com" ><img alt="Turismo Estelar" src="/images/turismoestelar.png"></a>
<!--End Turismoestelar.com-->

<!--Ruralgia clicks-->
<a href="http://www.ruralgia.com/casasalva?f=1805"><img alt="Ruralgia" src="http://www.ruralgia.com/images/ruralgia.gif"></a>
<!--End Ruralgia clicks-->

<!--Rurismo-->
<a href="http://www.rurismo.com" target="_blank">Casas Rurales en Salamanca. Turismo Rural</a>
<!--End Rurismo-->

<!--Tuscasasrurales.com-->
<a href="http://www.tuscasasrurales.com/casa-salva-f13432.asp" target="_blank" ><img width="200"  height="50" border="0" src="http://www.tuscasasrurales.com/imagenes/alojamiento-en-tuscasasrurales-2.png" alt="Casa Salva en Tuscasasrurales.com"></a>
<!--End Tuscasasrurales.com-->

<!--CasaTurismorural.com-->
<!--<a href="http://www.casaturismorural.com" title="Casa Turismo Rural, guía de casas rurales" target="_blank">Casa Turismo Rural, guía de casas rurales</a>-->
<!--End CasaTurismorural.com-->

<!--buviaje.com-->
<a href="http://www.buviaje.com/casarural_actividad.php?enviar=casa+salva" title="Casa Salva">Buviaje.com</a>
<!--End buviaje.com-->

<br><br>
<!--turismoconperros_com-->
<a href="http://www.turismoconperros.com/casarural1395129040a--Salamanca-la_rinconada_de_la_sierra_0_casa_salva..html" target=_blank" title="Casa Salva en turismoconperros">
<strong>turismoconperros.com</strong>
</a>
<!--Endturismoconperros_com-->
<!--espaciorural_com-->
<a href="http://www.espaciorural.com/" title="Turismo Rural">Turismo Rural</a>
<!--End espaciorural_com-->
<br><br>

<!--sensacionrural_com-->
<!--<a href='http://sensacionrural.es' target='_blank' title='casas rurales'>
<img src='http://sensacionrural.es/web/imagenes/recomendadas/distintivo-3.gif' alt='casas rurales' border='0'/>-->
<!--End sensacionrural_com-->
<br><br>
<!--ruralzoom_com-->
<div class="ruralzoom-enlace-web"></div><script type="text/javascript" src="http://www.ruralzoom.com/websrv/enlaceWeb/n/70914"></script>
<!--End ruralzoom_com-->

<br><br>
<!--portalrural_es-->
<a href='http://www.portalrural.es/casa-rural/casa-salva/570/' targe='_blank'><img src='http://www.portalrural.es/images/banner/186x69.jpg' alt='Casa Rural Casa Salva' /></a>
<!--End portalrural_es-->

<br><br>
<!--turismorural_com-->
<a href="http://www.turismorural.com" title="Turismo Rural"><strong>TurismoRural.com</strong></a>
<!--End turismorural_com-->

<!--Miturismorural_com-->
<!--<a href="http://www.miturismorural.com" target="_blank"><img src="http://www.miturismorural.com/img/LogoEmbebedBlanco92x45.gif" alt="Alojamientos rurales, casas rurales y turismo rural en MiTurismoRual.com"></a>-->
<!--End Miturismorural_com-->

<!--excursionrural_es-->
<!--<a href=" http://excursionrural.es" title="Excursión Rural"><strong>Excusionrural.es</strong></a>-->
<!--Excursionrural_es-->
<!--ruralquila_es-->
<div class="logo-ruralquila">

    <a href="http://www.ruralquila.com" title='casas rurales, alquilar casas rurales'>

        <img style="margin-top:0px;" src="http://www.ruralquila.com/wp-content/uploads/2015/06/logo-ruralquila.png" alt="alquilar casas rurales" width="180" height="80"></a>

</div>
<!--ruralquila_es-->
<br><br>
<!--Minube estadisticas-->
<div class="minubewd_rqst_xxs">
<div class="minubewd_header">
<a title="minube viajes" target="_blank" href="http://www.minube.com"><img border="0" src="http://1.images.mnstatic.com/owners/logo_xxs.png" /></a>
</div><div class="minubewd_body">
<a title="Casa Rural Casa Salva en La Rinconada de la Sierra" target="_blank" href="http://www.minube.com/rincon/casa-rural-casa-salva-a34962" class="mnwd_poi">Casa Rural Casa Salva</a>
<a class="">
<img class="minubewd_top_image_src" border="0" src="http://1.images.mnstatic.com/owners/es_pet_gus_xxs_w.png" /></a>
</div>
<div class="minubewd_footer"><div class="minubewd_footer"><a target="_blank" href="http://www.minube.com/rincon/casa-rural-casa-salva-a34962#add_experience" class="mnwd_addexp">Escribe tu experiencia</a> </div></div><script type="text/javascript">window.onload=function() {var minubewd_scrptE = document.createElement("script");minubewd_scrptE.setAttribute("type", "text/javascript");minubewd_scrptE.setAttribute("language", "JavaScript");minubewd_scrptE.setAttribute("src", "http://www.minube.com/owners/javascript/pet/34962//xxs");document.getElementsByTagName("head")[0].appendChild(minubewd_scrptE);}</script>
<!--End Minube-->
</div>

<!--End Enlaces-->
<p><span style="color: #ffffff"><span style="font-size: 10pt"><span style="font: 7pt 'Times New Roman'"><font face="Arial"><font size="6"><span style="font-size: 9.5pt">i&oacute;n de Esqu&iacute; &nbsp;(La Covatilla),</span></font></font></span></span></span> <span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 10pt"><span style="font: 7pt 'Times New Roman'">&nbsp;</span></span><span style="font-size: 9.5pt">Pirag&uuml;ismo (Sotoserrano), </span></font></font></span><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 10pt"><span style="font: 7pt 'Times New Roman'">&nbsp;</span></span><span style="font-size: 9.5pt">Montar a caballo (Tamames)</span></font></font></span></p>
<p><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 10pt"><span style="font: 7pt 'Times New Roman'">&nbsp;</span></span><span style="font-size: 9.5pt">Quads (Escurial de la Sierra), </span></font></font></span><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 9.5pt">Ba&ntilde;os termales (Ba&ntilde;os de Montemayor)</span></font></font></span></p>
<p><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 10pt"><span style="font: 7pt 'Times New Roman'">&nbsp;</span></span><span style="font-size: 9.5pt">Toros de lidia (El Puerto de San Lorenzo), </span></font></font></span><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 9.5pt">Senderismo y monta&ntilde;ismo en el mismo pueblo y alrededores</span></font></font></span></p>
<p><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 10pt"><span style="font: 7pt 'Times New Roman'">&nbsp; </span></span><span style="font-size: 9.5pt">Ba&ntilde;os termales (Ba&ntilde;os de Montemayor), </span></font></font></span><span style="color: #ffffff"><font face="Arial"><font size="6"><span style="font-size: 9.5pt">Toros de lidia (El Puerto de San Lorenzo)</span></font></font></span></p><?php
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
<td align="center"><a href="actividades.php" class="abmenu" id="abmenu"> Actividades y enlaces de interés</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="comollegar.php" class="bmenu" id="bmenu5">Como llegar</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="precios.php" class="bmenu" id="bmenu6">Precios</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="lagranja.php" class="bmenu" id="bmenu7">La Granja</a></td><td><img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt=""></td>
<td align="center"><a href="contacto.php" class="bmenu" id="bmenu8">Contacto</a></td></tr></table></td></tr><tr><td height="10" align="center" bgcolor="#E6E6E6" class="footer"><br>C/ Salas Pombo nº 20, 37607 La Rinconada de la Sierra (Salamanca). Tlfno: 923450761/669441817. E-mail: reservas@casasalva.es<div style="width:0px; height:10px;"><span></span></div></td></tr></table>
<?php
  $googleAnalyticsImageUrl = googleAnalyticsGetImageUrl();
  echo '<img src="' . $googleAnalyticsImageUrl . '" />';?>
<script type="text/javascript">stLight.options({publisher: "d70911eb-0736-4370-b651-af778ced56cf", doNotHash: false, doNotCopy: false, hashAddressBar: true});</script>

</BODY></HTML>
<?php
$statisticsObject->destruct();
?>