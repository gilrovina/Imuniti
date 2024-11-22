var latitude = null;
var longitude = null;

if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (position) {
        latitude = position.coords.latitude;
        longitude = position.coords.longitude;

        initMap();
    });
}

function initMap() {
    if (latitude !== null && longitude !== null) {
        var userLocation = { lat: latitude, lng: longitude };
        console.log("Latitude: " + userLocation.lat);
        console.log("Longitude: " + userLocation.lng);
        
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15,
            center: userLocation
        });
        
        var userMarker = new google.maps.Marker({
            position: userLocation,
            map: map,
            title: "Você está aqui",
            icon: "" // Ícone vermelho padrão
        });
        
        // ##################### Centros de Saúde da Regional Barreiro #################################
      
        var ubs1 = { lat: -19.99538139910171, lng: -44.0048212134914 };
        var marker1 = new google.maps.Marker({
            position: ubs1,
            map: map,
            title: "Centro de Saúde Barreiro de Cima",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png" 
        });

        
        var ubs2 = { lat: -19.986114059892497, lng: -43.988858799999996};
        var marker2 = new google.maps.Marker({
            position: ubs2,
            map: map,
            title: "Centro de Saúde Bonsucesso",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs3 = { lat: -19.976019561281976, lng: -44.02257561850931}; 
        var marker3 = new google.maps.Marker({
            position: ubs3,
            map: map,
            title: "Centro de Saúde Carlos Renato Dias",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs4 = { lat: -19.9908635872542, lng: -44.01577773068961};
        var marker4 = new google.maps.Marker({
            position: ubs4,
            map: map,
            title: "Centro de Saúde Diamante / Teixeira Dias",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs5 = { lat:-19.96286609908091, lng: -44.000671253965606};  
        var marker5 = new google.maps.Marker({
            position: ubs5,
            map: map,
            title: "Centro de Saúde Dr. José Domingos",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs6 = { lat: -19.996713276665112, lng: -44.0115510846552}; 
        var marker6 = new google.maps.Marker({
            position: ubs6,
            map: map,
            title: "Centro de Saúde Eduardo Mauro de Araújo - Miramar",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs7 = { lat: -19.9847879586489, lng: -44.03540649532567};  
        var marker7 = new google.maps.Marker({
            position: ubs7,
            map: map,
            title: "Centro de Saúde Francisco Gomes Barbosa - Tirol",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs8 = { lat: -20.01869574771863, lng: -44.0317167460344}; 
        var marker8 = new google.maps.Marker({
            position: ubs8,
            map: map,
            title: "Centro de Saúde Independência",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });


        var ubs9 = { lat: -19.995239227858214, lng: -44.0487899460344};   
        var marker9 = new google.maps.Marker({
            position: ubs9,
            map: map,
            title: "Centro de Saúde Itaipu/Jatobá",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs10 = { lat: -19.98791677871133,  lng:-44.04636966144025 }; 
        var marker10 = new google.maps.Marker({
            position: ubs10,
            map: map,
            title: "Centro de Saúde Lisandra Angélica David Justino - Túnel de Ibirité",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs11 = { lat: -19.97914046153702, lng: -44.04660182944759};  
        var marker11 = new google.maps.Marker({
            position: ubs11,
            map: map,
            title: "Centro de Saúde Maria Madalena Teodoro - Lindéia",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs12 = { lat: -20.013589437536535, lng: -44.03081984109025};  
        var marker12 = new google.maps.Marker({
            position: ubs12,
            map: map,
            title: "Centro de Saúde Mangueiras",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs13 = { lat: -19.981205397252182, lng: -43.99924397729833};  
        var marker13 = new google.maps.Marker({
            position: ubs13,
            map: map,
            title: "Centro de Saúde Milionários",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs14 = { lat: -19.99961402045817, lng: -43.96706485767241};
        var marker14 = new google.maps.Marker({
            position: ubs14,
            map: map,
            title: "Centro de Saúde Pilar - Olhos D'Agua",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs15 = { lat: -19.98255280414954, lng:-44.0547778189476 };
        var marker15 = new google.maps.Marker({
            position: ubs15,
            map: map,
            title: "Centro de Saúde Regina",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs16 = { lat: -19.999601811409768, lng: -44.03281761746444}; 
        var marker16 = new google.maps.Marker({
            position: ubs16,
            map: map,
            title: "Centro de Saúde Santa Cecília",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs17 = { lat: -20.009403079508584, lng: -44.007426499994686}; 
        var marker17 = new google.maps.Marker({
            position: ubs17,
            map: map,
            title: "Centro de Saúde Urucuia",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs18 = { lat: -20.010283115963954, lng: -44.03625666441447}; 
        var marker18 = new google.maps.Marker({
            position: ubs18,
            map: map,
            title: "Centro de Saúde Vale do Jatobá",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs19 = { lat: -19.997734577071277,  lng: -43.99258693558189}; 
        var marker19 = new google.maps.Marker({
            position: ubs19,
            map: map,
            title: "Centro de Saúde Vila CEMIG",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        var ubs20 = { lat: -20.00076979557301, lng: -44.026135199993085};
        var marker20 = new google.maps.Marker({
            position: ubs20,
            map: map,
            title: "Centro de Saúde Vila Pinho",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

        // ##################### Centros de Saúde da Regional Centro-Sul #################################
        
         
    }
}

/*

 var ubsx = { lat: -20.00076979557301, lng: -44.026135199993085};
        var markerx = new google.maps.Marker({
            position: ubsx,
            map: map,
            title: "",
            icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
        });

 */