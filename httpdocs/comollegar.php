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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Casa Salva - Contacto</title>
<meta name="DESCRIPTION" content="Como llegar a la casa rural Casa Salva, hasta La Rinconada de la Sierra, Salamanca.">
<meta name="KEYWORDS" content="Rinconada, Sierra de Francia, casa rural salamanca, turismo rural salamanca, turismos rural sierra de francia, casa rural Sierra de Francia, casa rural cerca de la alberca, casas rurales sierra de francia">
<meta name="GENERATOR" content="Parallels Plesk Sitebuilder 4.5.0">
<link href="css/styles.css?template=personal-018&colorScheme=green&header=&button=buttons1" rel="stylesheet" type="text/css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
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

<script src="js/jquery-cookie.js" charset="utf-8" type="text/javascript"></script>
<script src="js/jquery-lang.js" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript">
	var lang = new Lang('es','es','true');
	lang.dynamic('en', 'js/langpack/en.json');
    lang.dynamic('es', 'js/langpack/es.json');

//alert( $.cookie("langCookie") );
var cookieValue = $.cookie("langCookie");

function modiframe(lang)
{

var iframe = document.getElementById("avaibookbutton");

iframe.setAttribute("src", "http://www.avaibook.com/widgets_propietarios/loader.php?id=1071&lang=" + lang);

var iframe2 = document.getElementById("avaibookcalendar");

iframe2.setAttribute("src", "http://www.avaibook.com/widgets_propietarios/loader.php?id=1073&lang=" + lang);


var iframe3 = document.getElementById("botontw");

iframe3.setAttribute("src", "//platform.twitter.com/widgets/follow_button.html?screen_name=casa_salva&lang=" + lang);


var iframe5 = document.getElementById("avaibookopinion");

iframe5.setAttribute("src", "http://www.avaibook.com/widgets_propietarios/opiniones.php?cod_propietario=7295&cod_alojamiento=10065&subtipo=2&color_texto=000000&lang=" + lang);

if (lang=="es")
{
var iframe8 = document.getElementById("botonfb");

iframe8.setAttribute("src", "http://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FCasaRuralCasaSalva%2F&width&layout=standard&action=like&show_faces=true&share=true&height=80&locale=es_ES");
}

if (lang=="en")
{
var iframe4 = document.getElementById("botonfb");

iframe4.setAttribute("src", "http://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FCasaRuralCasaSalva%2F&width&layout=standard&action=like&show_faces=true&share=true&height=80&locale=en_GB");

var iframe10 = document.getElementById("mapspicture");

iframe10.setAttribute("src", "http://maps.google.com/maps?q=Salas+Pombo,+20,+La+Rinconada+de+la+Sierra,+Salamanca,+37607&amp;ie=UTF8&amp;sll=40.605612,-6.006775&amp;sspn=0.15978,0.307274&amp;vpsrc=6&amp;hnear=Calle+Salas+Pombo,+37607+La+Rinconada+de+la+Sierra,+Salamanca,+Castilla+y+Le%C3%B3n,+Espa%C3%B1a&amp;t=h&amp;hq=&amp;ll=40.612028,-6.020728&amp;spn=0.00112,0.004801&amp;z=14&amp;layer=c&amp;cbll=40.612029,-6.020729&amp;panoid=tAbUHIBYovyz5NlwhA5LWA&amp;cbp=11,264.57,,0,-0.36&amp;source=embed&amp;output=svembed&language=en");

var iframe11 = document.getElementById("maps");

iframe11.setAttribute("src", "http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Salas+Pombo,+20,+La+Rinconada+de+la+Sierra,+Salamanca,+37607&amp;sll=40.703546,-4.855957&amp;sspn=1.257622,2.469177&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Salas+Pombo,+37607+La+Rinconada+de+la+Sierra,+Salamanca,+Castilla+y+Le%C3%B3n,+Espa%C3%B1a&amp;ll=40.612042,-6.020707&amp;spn=0.157328,0.308647&amp;t=m&amp;z=12&amp;output=embed");
}
}
</script>
<style>
	body {
		font-family:Verdana, Geneva, sans-serif;
		font-size:12px;
	}
	#langChanger {
		margin-bottom:10px;
	}
	.sectionTitle {
		font-weight:bold;
		font-size:14px;
		margin-bottom:10px;
	}
</style>
</head>

<BODY MARGINHEIGHT="0" MARGINWIDTH="0" TOPMARGIN="0" RIGHTMARGIN="0" BOTTOMMARGIN="0" LEFTMARGIN="0">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
<div id="langChanger">
 <tr>
  <td height="52" background="images/xsk_02.jpg?template=personal-018&colorScheme=green&header=&button=buttons1">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
     <td height="52" align="center" style="background-image: url(images/htop.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: right bottom; padding-right: 30px; padding-left: 30px;">
       <table border="0" cellspacing="0" cellpadding="0">
        <tr>
         <td align="center">
          <a href="entorno.php" class="menu" lang="es">Entorno</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td>
         <td align="center">
          <a href="casa.php" class="menu"  lang="es">La Casa</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td>
         <td align="center">
          <a href="recorridofotografico.php" class="menu"  lang="es">Recorrido Fotográfico</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td>
         <td align="center">
          <a href="actividades.php" class="menu"  lang="es"> Actividades y enlaces de interés</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td>
         <td align="center">
          <a href="comollegar.php" class="amenu"  lang="es">Como llegar</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td>
         <td align="center">
          <a href="precios.php" class="menu"  lang="es">Precios</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td><td align="center">
          <a href="lagranja.php" class="menu"  lang="es">La Granja</a>
         </td>
         <td width="25" align="center">
          <img src="images/bullet.gif?template=personal-018&colorScheme=green&header=&button=buttons1">
         </td>
         <td align="center">
          <a href="contacto.php" class="menu"  lang="es">Contacto</a>
         </td>
         <td width="125" align="right">
          <a title="Síguenos en Twitter" href="http://twitter.com/casa_salva" target="_blank" lang="es"><img src="/images/twitter-32.png" alt="Síguenos en Twitter" lang="es" /></a>
         </td>
         <td width="55" align="center">
	  <a title="Síguenos en Facebook" href="http://www.facebook.com/CasaRuralCasaSalva" target="_blank" lang="es"><img src="/images/facebook-32.png" alt="Síguenos en Facebook" lang="es" /></a>
         </td>
         <td width="55" align="center">
          <a title="Síguenos en Instagram casasalva.es" href="http://instagram.com/casasalva.es?ref=badge" target="_blank" lang="es"><img src="/images/instagram.ico" alt="Síguenos en Instagram" lang="es" /></a>
          </td>
         <td width="45" align="center">
          <a title="Síguenos en Google+" href="https://plus.google.com/+CasasalvaEsCasarural" target="_blank" lang="es"><img src="/images/gplus-32.png" alt="Síguenos en Google+" lang="es" /></a>
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
								<td class="text-header" lang="es">Como llegar</td>
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
         <div class="demo-live">
           <input id="en" value="en" type="image" src="images/en.png" name="image_en" width="20" height="20" onclick="window.lang.change('en'); modiframe('en'); return false;">
           <input id="es_ES" value="es_ES" type="image" src="images/es.png" name="image_es" width="20" height="20" onclick="window.lang.change('es'); modiframe('es'); return false;">
          </div>
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
                                        <img src="images/aceptamos_mascotas.jpg" width="50" height="50">
                                        <img src="images/whatsapp.jpg" width="50" height="50"  title="669441817">
                                        <img src="images/4_estrellas verdes_300.jpg" width="200" height="50"  title="cuatro estrellas verdes">
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top" height="100%">
<table border="0" cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;"><tr><td width="37" valign="bottom" background="images/xsk_11.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><img src="images/xsk_14.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="364" alt=""></td><td width="100%" valign="top" bgcolor="#FFFFFF" style="padding-right: 25px; padding-left: 25px;">

<table width="100%">
<tr>
<td name="SB_stretch" class="pageContent">
<div>
<div>
<div>&nbsp;</div>
<div>
<div><span style="font-family: Arial;"><span style="font-size: medium;" lang="es">Donde estamos</span></span></div>
<div>&nbsp;</div>
<div><span style="font-size: small;"><span style="font-family: Arial;">C/ Salas Pombo, 20 37607 La Rinconada de la Sierra (Salamanca).</span></span></div>
<div>&nbsp;</div>
</div>
<div><iframe id="maps" width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=es&amp;geocode=&amp;q=Salas+Pombo,+20,+La+Rinconada+de+la+Sierra,+Salamanca,+37607&amp;sll=40.703546,-4.855957&amp;sspn=1.257622,2.469177&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Salas+Pombo,+37607+La+Rinconada+de+la+Sierra,+Salamanca,+Castilla+y+Le%C3%B3n,+Espa%C3%B1a&amp;ll=40.612042,-6.020707&amp;spn=0.157328,0.308647&amp;t=m&amp;z=12&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=es&amp;geocode=&amp;q=Salas+Pombo,+20,+La+Rinconada+de+la+Sierra,+Salamanca,+37607&amp;sll=40.703546,-4.855957&amp;sspn=1.257622,2.469177&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Salas+Pombo,+37607+La+Rinconada+de+la+Sierra,+Salamanca,+Castilla+y+Le%C3%B3n,+Espa%C3%B1a&amp;ll=40.612042,-6.020707&amp;spn=0.157328,0.308647&amp;t=m&amp;z=12" style="color:#0000FF;text-align:left" lang="es">Ver mapa más grande</a></small></div>
<p>&nbsp;</p>
<p><span style="font-size: medium;"><span style="font-family: Arial;" lang="es">Indicaciones del propietario:</span></span></p>
<p><br />
<span style="font-size: small;"><span style="font-family: Arial;" >
<span lang="es">- Desde Salamanca, tomar la CL-512 (Ctra de Salamanca-Coria por Las Hurdes) dirección Vecinos.</span><br />
<span lang="es">- A la salida de Vecinos coger la SA-210 (Ctra a Vecinos) dirección Tamames.</span><br />
<span lang="es">- En Tamames tomar un desvío a la izquierda hacia la CV-25 (Ctra de Tamames) dirección Tejeda.</span><br />
<span lang="es">- En Tejeda tomar un desvío a la derecha hacia la CV-112 dirección La Rinconada de la Sierra.</span><br />
<span lang="es">- Entrar en La Rinconada de la Sierra por la calle Salas Pombo. La casa está en el número 20, justo pasando la iglesia del pueblo.</span></span></span></p>
</div>
</div>
<div>&nbsp;</div>
<div>
<div>
<iframe id="mapspicture" width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?q=Salas+Pombo,+20,+La+Rinconada+de+la+Sierra,+Salamanca,+37607&amp;hl=es&amp;ie=UTF8&amp;sll=40.605612,-6.006775&amp;sspn=0.15978,0.307274&amp;vpsrc=6&amp;hnear=Calle+Salas+Pombo,+37607+La+Rinconada+de+la+Sierra,+Salamanca,+Castilla+y+Le%C3%B3n,+Espa%C3%B1a&amp;t=h&amp;hq=&amp;ll=40.612028,-6.020728&amp;spn=0.00112,0.004801&amp;z=14&amp;layer=c&amp;cbll=40.612029,-6.020729&amp;panoid=tAbUHIBYovyz5NlwhA5LWA&amp;cbp=11,264.57,,0,-0.36&amp;source=embed&amp;output=svembed"></iframe>
<br />
<small>
<a href="http://maps.google.com/maps?q=Salas+Pombo,+20,+La+Rinconada+de+la+Sierra,+Salamanca,+37607&amp;hl=es&amp;ie=UTF8&amp;sll=40.605612,-6.006775&amp;sspn=0.15978,0.307274&amp;vpsrc=6&amp;hnear=Calle+Salas+Pombo,+37607+La+Rinconada+de+la+Sierra,+Salamanca,+Castilla+y+Le%C3%B3n,+Espa%C3%B1a&amp;t=h&amp;hq=&amp;ll=40.612028,-6.020728&amp;spn=0.00112,0.004801&amp;z=14&amp;layer=c&amp;cbll=40.612029,-6.020729&amp;panoid=tAbUHIBYovyz5NlwhA5LWA&amp;cbp=11,264.57,,0,-0.36&amp;source=embed" style="color:#0000FF;text-align:left" lang="es">Ver mapa más grande</a>
</small>
</div>
</div>
<p>&nbsp;<p><a href="http://www.escapadarural.com/casa-rural/salamanca/casa-salva" title="Casa Salva, de las mejores casas rurales en Salamanca"><img src="http://static.escapadarural.com/files/badges/R14/salamanca.png" alt="Casa Salva, alojamiento rural recomendado en Salamanca (La Rinconada de la Sierra)" width="250" heigth="187"></a> </p></p>
<div>
<!--Botón más uno-->
<script type="text/javascript" src="https://apis.google.com/js/plusone.js">
</script>
<g:plusone href="http://www.casasalva.es" lang= "es"></g:plusone>
<!--Twitter-->
<iframe id="botontw"
  src="//platform.twitter.com/widgets/follow_button.html?screen_name=casa_salva&lang=es"
  style="width: 300px; height: 20px;"
  allowtransparency="true"
  frameborder="0"
  scrolling="no">
</iframe>
<br><br>
<!--Me gusta fb-->
<iframe id="botonfb"
  src="http://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FCasaRuralCasaSalva%2F&width&layout=standard&action=like&show_faces=true&share=true&height=80&locale=es_ES"
  style="border:none; overflow:hidden; width:450px; height:80px;"
  allowtransparency="true"
  frameborder="0"
  scrolling="no">
</iframe>
</div>
<?php
echo $statisticsObject->getContentBlock();
?>
</td></tr></table></td><td width="228" valign="top" background="images/xsk_19.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><table width="228" border="0" cellspacing="0" cellpadding="0"><tr><td height="362" align="center" valign="top" style="background-image: url(images/xsk_13.jpg?template=personal-018&colorScheme=green&header=&button=buttons1); background-repeat: no-repeat; background-position: left top;"><br>
<iframe id="avaibookbutton" src="http://www.avaibook.com/widgets_propietarios/loader.php?id=1071&lang=es" style="width: 100px; height: 45px; border: 0" frameborder=0 allowtransparency="allowtransparency">Tu navegador no soporta iframes</iframe><br>
<iframe id="avaibookcalendar" src="http://www.avaibook.com/widgets_propietarios/loader.php?id=1073&lang=es" style="width: 200px; height: 300px; border: 0" frameborder=0 allowtransparency="allowtransparency">Tu navegador no soporta iframes</iframe>

<iframe id="avaibookopinion" src="http://www.avaibook.com/widgets_propietarios/opiniones.php?cod_propietario=7295&cod_alojamiento=10065&subtipo=2&color_texto=000000&lang=es" style="width: 210px; height: 350px; border: 0px;" frameborder="0" allowtransparency="allowtransparency">Tu navegador no soporta iframes</iframe>

<p><a href="http://www.clubrural.com/ofertasweb.php?idAlojamiento=136611" target="_blank"><img src="/images/ofertas-estrellas.gif" alt="Ver ofertas" border="0" lang="es" /></a></p>

<!-- Begin MailChimp Signup Form -->
<link href="http://cdn-images.mailchimp.com/embedcode/slim-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">#mc_embed_signup{clear:left;font:12px;}</style>
<div id="mc_embed_signup">
<form action="http://casasalva.us4.list-manage1.com/subscribe/post?u=fbf385f3364428e828f14565f&amp;id=4225484fb3" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank">
	<label for="mce-EMAIL"  align="center" lang="es">Suscr&iacute;bete al newsletter</label>
	<div align="center"><input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Introduce tu email" required lang="es" ></div>
	<div class="clear"  align="center"><input type="submit" value="Enviar" name="subscribe" id="mc-embedded-subscribe" class="button" lang="es"></div>
</form>
</div>
<!--End mc_embed_signup-->

<table width="176" border="0" cellspacing="0" cellpadding="0">
</table></td></tr><tr><td><img src="images/spacer.gif?template=personal-018&colorScheme=green&header=&button=buttons1" width="230" height="8">
</td></tr></table></td></tr></table></td></tr><tr><td valign="top" height="47"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td width="37"><img src="images/xsk_21.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="37" height="47" alt=""></td><td width="100%" align="left" background="images/xsk_23.jpg?template=personal-018&colorScheme=green&header=&button=buttons1"><img src="images/xsk_22.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="511" height="47" alt=""></td><td width="228" bgcolor="#E6E6E6"><img src="images/spacer.gif?template=personal-018&colorScheme=green&header=&button=buttons1" width="230" height="30"></td></tr></table></td></tr><tr><td height="1" align="center" bgcolor="#E6E6E6" style="padding-right: 30px; padding-left: 30px;"><table border="0" cellspacing="0" cellpadding="0"><tr>
<td align="center">
<a href="entorno.php" class="bmenu" id="bmenu1"  lang="es">Entorno</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="casa.php" class="bmenu" id="bmenu2"  lang="es">La Casa</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="recorridofotografico.php" class="bmenu" id="bmenu3"  lang="es">Recorrido Fotográfico</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="actividades.php" class="bmenu" id="bmenu4"  lang="es"> Actividades y enlaces de interés</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="comollegar.php" class="abmenu" id="abmenu5"  lang="es">Como llegar</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="precios.php" class="bmenu" id="bmenu"  lang="es">Precios</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="lagranja.php" class="bmenu" id="bmenu7"  lang="es">La Granja</a>
</td>
<td>
<img src="images/xsk_26.jpg?template=personal-018&colorScheme=green&header=&button=buttons1" width="29" height="11" alt="">
</td>
<td align="center">
<a href="contacto.php" class="bmenu" id="bmenu8"  lang="es">Contacto</a>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="10" align="center" bgcolor="#E6E6E6" class="footer">
<br><span>Salas Pombo nº 20, 37607 La Rinconada de la Sierra, Salamanca, </span><span lang="es">España</span>. <span lang="es">Tlfno</span>: 923450761/669441817. Email: reservas@casasalva.es<div style="width:0px; height:10px;">

<span></span></div></td></tr></div></table>
<script type="text/javascript">
window.lang.change(cookieValue); modiframe(cookieValue);
</script>
<?php
  $googleAnalyticsImageUrl = googleAnalyticsGetImageUrl();
  echo '<img src="' . $googleAnalyticsImageUrl . '" />';?>
</body>
</html>
<?php
$statisticsObject->destruct();
?>