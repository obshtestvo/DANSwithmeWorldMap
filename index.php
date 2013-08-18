<?php

include 'connect.php';

// 1. Select all points
$pointsQ = "
SELECT c.city, c.country, c.lat, c.long, e.people, e.link, e.day, e.source
FROM dwm_cities c
JOIN dwm_events e ON c.code = e.code
ORDER BY c.country";

$count = mysql_query($pointsQ);
while($res = mysql_fetch_assoc($count)){
   $data = array(
      'day' => intval($res['day']),
      'ppl' => intval($res['people']),
      'city' => $res['city'],
      'country' => $res['country'],
      'link' => $res['link'],
      'src' => $res['source']
   );
   $pt = array(
      'lat' => floatval($res['lat']),
      'lng' => floatval($res['long']),
      'data' => $data
   );
   $cities[] = $pt;
}

// 2. Find DAY Difference
$beginning = strtotime("2013-06-14");
$diff = time() - $beginning;
$days = floor($diff/(60*60*24)) + 1;

// 3. Find other data
$citiesHome = "
SELECT COUNT(DISTINCT city) FROM dwm_cities
WHERE `country` = 'България'";
$homeCitiesNum = mysql_fetch_row(mysql_query($citiesHome));
$homeCitiesNum = $homeCitiesNum[0];

$abroadCountries = "SELECT COUNT(DISTINCT country) FROM dwm_cities";
$countriesNum = mysql_fetch_row(mysql_query($abroadCountries));
$countriesNum = $countriesNum[0] - 1;

$abroadCities = "SELECT COUNT(DISTINCT city) FROM dwm_cities";
$citiesNum = mysql_fetch_row(mysql_query($abroadCities));
$citiesNum = $citiesNum[0] - $homeCitiesNum;


?>

<html>    
  <head> 
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>        
    <script type="text/javascript" src="js/gmap3.min.js"></script>
    <script>
      var cities = <?php echo json_encode($cities); ?>;
    </script>
    <script type="text/javascript" src="js/active.js"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
    
    <title>#ДАНСwithme World Map</title>
    
  <body>
    <div id="main">
      <div id="map">
         <div id="gmap3"></div>
         <div id="data-btn"><img src="images/up-arrow.png" /></div>
      </div>
      
      <div id="data">
         <table class="center"><tbody>
         <tr>
            <th>Ден</th>
            <th>Град</th>
            <th>Държава</th>
            <th>Хора</th>
            <th>Lat</th>
            <th>Long</th>
            <th>Линк</th>
         </tr>
         <?php foreach($cities as $city): ?>
         <tr>
            <td><?php echo $city['data']['day']; ?></td>
            <td><?php echo $city['data']['city']; ?></td>
            <td><?php echo $city['data']['country']; ?></td>
            <td><?php echo $city['data']['ppl']; ?></td>
            <td><?php echo $city['lat']; ?></td>
            <td><?php echo $city['lng']; ?></td>
            <td><a href="<?php echo $city['data']['link']; ?>" target="_blank"><?php echo $city['data']['src']; ?></a></td>
         </tr>
         <?php endforeach; ?>
         </tbody></table>
      </div>
    </div>
    
    <div id="info">
      <div class="text-container">
         <span class="wleft">България</span>
         <span class="wright"><?php echo $homeCitiesNum . ' гр.'; ?></span>
      </div>
      <div id="count">
         <span class="day"><?php echo $days; ?></span>
         <span class="day-text">ден</span>
      </div>
      <div class="text-container">
         <span class="wleft">Свят</span>
         <span class="wright"><?php echo $countriesNum.' стр. ' . $citiesNum .' гр.'; ?></span>
      </div>
    </div>
    
    <div id="footer">
      <div class="fleft">© 2013 #ДАНСwithme WorldMap.</div>
      <div class="fright">Изработка <a href="http://www.stefanzh.com" target="_blank">Стефан Желязков</a>. Проект на <a href="http://www.obshtestvo.bg" target="_blank">Обществото</a> в подкрепа на <a href="http://www.danswithme.com/" target="_blank">#ДАНСwithme</a> и <a href="https://www.facebook.com/DANSwithmeWorld" target="_blank">#ДАНСwithme World</a>.</div>
    </div>
  </body>
</html>