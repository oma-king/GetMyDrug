var token;

function soapAuth() {
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open('POST', 'https://h360.vocalcom.tn/GetMyDrug/SoapWS/FindMyDrug.asmx', true);

  var sr = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">'
    + '<soapenv:Header>'
    + '<tem:SecuredTokenWS>'
    + '<tem:Username>adminws</tem:Username>'
    + '<tem:Password>R@4Ck5g5JjFGLMcRCFGr@w!D?qC**LXK3?</tem:Password>'
    + '</tem:SecuredTokenWS>'
    + '</soapenv:Header>'
    + '<soapenv:Body>'
    + '<tem:Authentication/>'
    + '</soapenv:Body>'
    + '</soapenv:Envelope>';

  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4) {
      if (xmlhttp.status == 200) {
        var xmlDoc = xmlhttp.responseXML;
        var x = xmlDoc.getElementsByTagName('AuthenticationResult')[0];
        var y = x.childNodes[0];
        token = y.nodeValue;
        searchPharmacies();
      }
    }
  }

  xmlhttp.setRequestHeader('Content-Type', 'text/xml');
  xmlhttp.send(sr);
}

function calculateDistance(lat1, lon1, lat2, lon2) {
  const R = 6371; // Rayon de la Terre en kilomètres
  const dLat = deg2rad(lat2 - lat1);
  const dLon = deg2rad(lon2 - lon1);
  const a =
    Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
    Math.sin(dLon / 2) * Math.sin(dLon / 2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  const distance = R * c;
  return distance.toFixed(2); // Distance arrondie à 2 décimales
}

function deg2rad(deg) {
  return deg * (Math.PI / 180);
}

function searchPharmacies() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var latitude = position.coords.latitude;
      var longitude = position.coords.longitude;
      var drugName = document.getElementById('drugName').value;
      var region = document.getElementById("region").value;

      var req = '<?xml version="1.0" encoding="utf-8"?>' +
        '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">' +
        '  <soap:Header>' +
        '    <SecuredTokenWS xmlns="http://tempuri.org/">' +
        '      <AuthenticationToken>' + token + '</AuthenticationToken>' +
        '    </SecuredTokenWS>' +
        '  </soap:Header>' +
        '  <soap:Body>' +
        '    <FindMyDrugInPharmacies xmlns="http://tempuri.org/">' +
        '      <DrugName>' + drugName + '</DrugName>' +
        '      <Region>' + region + '</Region>' +
        '    </FindMyDrugInPharmacies>' +
        '  </soap:Body>' +
        '</soap:Envelope>';

      $.ajax({
        url: 'http://h360.vocalcom.tn/GetMyDrug/SoapWS/FindMyDrug.asmx',
        type: 'POST',
        data: req,
        contentType: 'text/xml; charset=utf-8',
        dataType: 'xml',
        success: function(data) {
          var pharmacies = $(data).find('Pharmacy');
          var results = '';
          var pharmacyCount = pharmacies.length;
          

          pharmacies.each(function(index) {
            var pharmacyDrugName = $(this).find('DrugName').text();
            var pharmacyName = $(this).find('PharmacyName').text();
            var address = $(this).find('Address').text();
            var latitude = $(this).find('Latitude').text();
            var longitude = $(this).find('Longitude').text();
            var distance = calculateDistance(latitude, longitude, position.coords.latitude, position.coords.longitude);

            if (pharmacyDrugName.toLowerCase().startsWith(drugName.toLowerCase())) {
              results += '<div>';
              results += '<h3>Pharmacie : ' + pharmacyName + '</h3>';
              results += '<p>Médicament : ' + pharmacyDrugName + '</p>';
              results += '<p>Adresse : ' + address + '</p>';
              results += '<p>Distance : ' + distance + ' km</p>';
              results += '</div>';
            }
          });
          if (pharmacyCount > 0 && results !== '') {
            results = '<p>Nombre de pharmacies trouvées : ' + pharmacyCount + '</p>' + results;
          } else {
            results = '<p>Aucune pharmacie trouvée pour ce médicament dans cette région.</p>';
          }
  
             document.getElementById('searchResults').innerHTML = results;

        },
        error: function(xhr, status, error) {
          console.log('Erreur lors de la recherche de pharmacies : ' + error);
        }
      });
    });
  } else {
    console.log('La géolocalisation n\'est pas prise en charge par votre navigateur.');
  }
}
async function PharmaciesByRegion() {
  try {
    var results = '';
    var region = document.getElementById("region").value;
    const response = await fetch('https://h360.vocalcom.tn/GetMyDrug/GetListPharmaciesByRegion/api/PharmacyController/' + region);
    const data = await response.json();
    var regionPharmacyCount = data.length;

 
    results = '<p>Nombre de pharmacies dans la région ' + region + ' : ' + regionPharmacyCount + '</p>';
    console.log(data.length);
    document.getElementById('searchResults').innerHTML = '';
    document.getElementById('countPharmaciesResults').innerHTML = results;
    
  } catch (error) {
    console.error(error);
  }
}
