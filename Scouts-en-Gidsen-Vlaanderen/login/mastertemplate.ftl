<#macro mainLayout bodyClass="">
<!DOCTYPE html>
<html lang="nl-BE">

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

  <link href="${url.resourcesPath}/css/reset.css" rel="stylesheet" />
  <link href="${url.resourcesPath}/css/style.css" rel="stylesheet" />

  <!-- include font-->
  <link rel="stylesheet" href="${url.resourcesPath}/fonts/sgv-common/stylesheet.css">
  <link rel="stylesheet" href="${url.resourcesPath}/fonts/museosans/stylesheet.css">

  <#nested "css">
</head>

<body>
  <div class="login-form">
    <i class="logo sgv-common-scouts-en-gidsen-vlaanderen" aria-hidden="true"></i>
    <main id="content">
      <#nested "content">
    </main>
  </div>
  <footer class="footer">
    <div class="footer-row">
      <div class="footer-col">
          <div class="footer-contact-block">
            <a class="footer-contact-logo" href="https://www.scoutsengidsenvlaanderen.be" target="_blank" aria-label="Scouts en Gidsen Vlaanderen">
              <i class="sgv-common-scouts-en-gidsen-vlaanderen" aria-hidden="true"></i>
            </a>
            <div class="text-align-left">
              <p> Scouts en Gidsen Vlaanderen vzw <br> Wilrijkstraat 45, 2140 Antwerpen <br> RPR Antwerpen - 0407.138.494 <br><a href="mailto:info@scoutsengidsenvlaanderen.be">info@scoutsengidsenvlaanderen.be</a><br><a href="tel:+32 3 231 16 20">+32 03 231 16 20</a></p>
            </div>
          </div>
      </div>
      <div class="footer-col">
        <div class="footer-partner-block">
          <div class="footer-partner">
            <a href="https://hopper.be" aria-label="Hopper" rel="noopener" target="_blank"><img src="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/frontend/static/img/hopper_logo_wit_liggend.png" alt="Hopper" width="140"></a>
          </div>
          <div class="footer-partner">
            <a href="https://www.vlaanderen.be/nl" aria-label="Vlaanderen" rel="noopener" target="_blank"><img src="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/frontend/static/img/vlaanderen-verbeelding-werkt.png" alt="Vlaanderen" width="140"></a>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-row footer-small">
      <div class="footer-col footer-col-small footer-privacy">
        <a href="https://www.scoutsengidsenvlaanderen.be/privacy" target="_blank">Privacyverklaring</a>
      </div>
      <div class="footer-col footer-col-small">© 2023 Scouts en Gidsen Vlaanderen vzw ®</div>
    </div>
  </footer>
  <#nested "scripts">
  <script src="${url.resourcesPath}/js/cleave.min.js" type="text/javascript"></script>
  <script src="${url.resourcesPath}/js/cleave-phone.be.js" type="text/javascript"></script>
  <script src="${url.resourcesPath}/js/main.js" type="text/javascript"></script>
</body>

</html>
</#macro>
