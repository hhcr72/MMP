// const map = L.map('map-principal').setView([22.153885, -100.982586], 14);
// const tileURL = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'

// L.tileLayer(tileURL).addTo(map)

//L.marker([22.153885, -100.982586]).addTo(map).bindPopup('PQ.101.<br> Corregidora 145.').openPopup();

//const pool = require('../database')

function mapaP() {
    // console.log(marker);    
    // const map = L.map('mapa').setView([22.153885, -100.982586], 14);
    // const tileURL = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
    // L.tileLayer(tileURL).addTo(map)
  
    //L.marker([22.153885, -100.982586]).addTo(map).bindPopup('PQ.101.<br> Corregidora 145.').openPopup();

}

function mapaP1() {
   
    const map = L.map('mapa').setView([22.153885, -100.982586], 17);
    const tileURL = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
    L.tileLayer(tileURL).addTo(map)
  
    L.marker([22.153885, -100.982586]).addTo(map).bindPopup('PQ.101.<br> Corregidora 145.').openPopup();
    L.marker([22.153233, -100.98235]).addTo(map).bindPopup('PQ.102.<br> Pedro Moreno 104.').openPopup();
    L.marker([22.1533665,-100.9819138]).addTo(map).bindPopup('PQ.103.<br> Reforma 1215.').openPopup();
    L.marker([22.152869, -100.981567]).addTo(map).bindPopup('PQ.104.<br> Bolívar 150.').openPopup();
    L.marker([22.153398, -100.980913]).addTo(map).bindPopup('PQ.105.<br> Julián de los Reyes 526 y 528.').openPopup();
    L.marker([22.15262, -100.981039]).addTo(map).bindPopup('PQ.106.<br> M. Arista 470.').openPopup();
    L.marker([22.1527377, -100.9804866]).addTo(map).bindPopup('PQ.107.<br> M. Arista 400.').openPopup();
    L.marker([22.155425, -100.980419]).addTo(map).bindPopup('PQ.108.<br> Independencia 345.').openPopup();
    L.marker([22.154749, -100.980277]).addTo(map).bindPopup('PQ.109.<br> Independencia 425.').openPopup();
    L.marker([22.153939, -100.980097]).addTo(map).bindPopup('PQ.110.<br> Independencia 535.').openPopup();
 

}