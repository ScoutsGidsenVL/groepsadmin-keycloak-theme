# groepsadmin-keycloak-theme


## Installatie
Clone deze repo in de themes map van je locale keycloak server. Vergeet niet om voor het clonen om de standaard theme's tijdelijk in een andere map te plaatsen.
Het standaard Keycloak thema wordt namelijk gebruikt voor het admin gedeelte op de keycloak server.
Nadat het clonen geslaagd is kunnen deze terug geplaatst worden. Voeg deze toe aan de `.gitignore`-file zodat ze niet in deze repo belanden.

### Keycloak server
Keycloak kan geinstaleerd worden a.d.h.v. volgende [handleiding](http://www.keycloak.org/docs/latest/server_installation/index.html).

### Gebruik
Om dit thema in te stellen als login thema navigeer je in de admin console naar jouw realm settings en kies daar voor het tabblad themes.
Met behulp van de select-lists kan je het thema instellen bij de verschillende onderdelen.

### Download repo


```bash
$ git clone https://github.com/ScoutsGidsenVL/groepsadmin-keycloak-theme.git
```
### Dev omgeving

#### Keycloak server chashe
Om te verkomen dat tijdens het ontwikkelen van het keycloack theme telkens de server moet opnieuw opstarten is het beste om volgende var aan te passen in `./standalone/configuration/standalone.xml` zodat de template/theme niet meer worden gechashed. 

```xml
 <theme>
    <staticMaxAge>-1</staticMaxAge>
    <cacheThemes>false</cacheThemes>
    <cacheTemplates>false</cacheTemplates>
 </theme>
```







 