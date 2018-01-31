<#macro mainLayout bodyClass=""  >
<!DOCTYPE html>
<html>

<head>
	<title>Scouts en Gidsen Vlaanderen Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!-- favicon's -->
	<!-- Default favicon's -->
	<link rel="icon" type="image/png" sizes="32x32" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/favicon-16x16.png">

	<!-- Apple favicon's -->
	<link rel="apple-touch-icon" sizes="57x57" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/apple-icon-180x180.png">

	<!-- Android favicon's -->
	<link rel="icon" type="image/png" sizes="192x192" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/android-icon-192x192.png">
	<link rel="manifest" href="https://static.scoutsengidsenvlaanderen.be/images/favicons/manifest.json">

	<!-- MS favicon's & tile info-->
	<meta name="msapplication-config" content="https://static.scoutsengidsenvlaanderen.be/images/favicons/browserconfig.xml" />
	<meta name="application-name" content="Scouts en Gidsen Vlaanderen Login" />
	<meta name="msapplication-TileColor" content="#748d26" />
	<meta name="msapplication-square70x70logo" content="https://static.scoutsengidsenvlaanderen.be/images/favicons/tiny.png" />
	<meta name="msapplication-square150x150logo" content="https://static.scoutsengidsenvlaanderen.be/images/favicons/square.png" />
	<meta name="msapplication-wide310x150logo" content="https://static.scoutsengidsenvlaanderen.be/images/favicons/wide.png" />
	<meta name="msapplication-square310x310logo" content="https://static.scoutsengidsenvlaanderen.be/images/favicons/large.png" />

	<link href="${url.resourcesPath}/css/style.css" rel="stylesheet" />
	<link href="${url.resourcesPath}/css/reset.css" rel="stylesheet" />
	<link href="${url.resourcesPath}/css/menubalk.css" rel="stylesheet" />
	<link href="${url.resourcesPath}/css/login.css" rel="stylesheet" />

	<!-- include font-->
	<link rel="stylesheet" href="${url.resourcesPath}/lib/sgv-common/sgv-common.css">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<#nested "css">

</head>

<body>
	<div class="wrapper">
		<div class="menubalk">
			<div class="menubalk_content">
				<ul id="items">
					<li class="menu_item"><a href="https://www.scoutsengidsenvlaanderen.be/" class="menu-icon"><i class="sgv-common-favicon"></i></a></li>
					<li class="menu_item "><a href="https://www.scoutsengidsenvlaanderen.be/">Scouts en Gidsen Vlaanderen</a></li>
					<li class="menu_item hide-xs"><a href="http://www.hopper.be/winkel">Hopper Winkel</a></li>
					<li class="menu_item hide-xs"><a href="http://www.hopper.be/jeugdverblijf">Hopper Jeugdverblijven</a></li>

					<li><a href="https://www.facebook.com/scoutsengidsenvlaanderen" id="item_facebook" class="menu-icon" title="Facebook"><i class="sgv-common-facebook"></i></a></li>
					<li><a href="https://twitter.com/ScoutsGidsenVL" id="item_twitter" class="menu-icon" title="Twitter"><i class="sgv-common-twitter"></i></a></li>
					<li><a href="https://instagram.com/scoutsgidsenvl" id="item_instagram" class="menu-icon" title="Instagram"><i class="sgv-common-instagram"></i></a></li>
				</ul>
			</div>
		</div>
		<section id="content">
			<#nested "content">
		</section>
		<section id="action">
			<#nested "action">
		</section>
		<section id="reaction">
			<#nested "reaction">
		</section>
	<#nested "scripts">
    <script type="text/javascript">
	    document.addEventListener("DOMContentLoaded", function(event) { 
		var images = '${url.resourcesPath}/img/backgrounds/'
		var image = Math.floor(Math.random() * (7 - 1 + 1)) + 1;

		document.body.style.backgroundImage = "url('" + images + image + ".jpg')";
	})
	</script>
</body>

</html>
</#macro>