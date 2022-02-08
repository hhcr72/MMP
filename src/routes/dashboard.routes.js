const express = require('express');
const router = express.Router();
const pool = require('../database');   

//routes
router.get('/', async (req, res) => {
   const hoy = new Date();
   const mes = String(hoy.getMonth() + 1).padStart(2, '0')
   const pqs = await pool.query('SELECT ' +
   'COUNT(IF(status = "ACTIVO", status, NULL)) AS ACTIVO, ' +
   'COUNT(IF(status = "INACTIVO", status, NULL)) AS INACTIVO, ' +
   'COUNT(IF(status = "REPARACION", status, NULL)) AS REPARACION ' +
   'FROM mmp_parquimetros')
   
   const avs = await pool.query('SELECT idAveria, zona, parqAveria, nParqAnt, estado, direccion, latitud, longitud ' +
   'FROM mmp_averias ' +
   'LEFT JOIN mmp_parquimetros ON mmp_averias.parqAveria = mmp_parquimetros.nParquimetro ' +
   'WHERE estado != "FINALIZADO" ')

   const pqavs = await pool.query('SELECT ' +
   'COUNT(IF(estado = "ACTIVO", estado, NULL)) AS ACTIVO, ' +
   'COUNT(IF(estado = "EN PROCESO", estado, NULL)) AS PROCESO ' +
   'FROM mmp_averias ')

   const pqmas = await pool.query('SELECT parqAveria AS pq, COUNT(parqAveria) AS nrepo ' +
   'FROM mmp_averias ' +
   'WHERE month(fecAveria) = "' + mes +  '" ' +
   'GROUP by parqAveria ' +
   'Order by nrepo desc ')

   const totav = await pool.query('SELECT COUNT(codigoAveria) AS total, ' +
   'COUNT(IF(codigoAveria = "T1", codigoAveria, NULL)) AS T1, ' +
   'COUNT(IF(codigoAveria = "S1", codigoAveria, NULL)) AS S1, ' +
   'COUNT(IF(codigoAveria = "M4", codigoAveria, NULL)) AS M4, ' +
   'COUNT(IF(codigoAveria = "M2", codigoAveria, NULL)) AS M2, ' +
   'COUNT(IF(codigoAveria = "M3", codigoAveria, NULL)) AS M3, ' +
   'COUNT(IF(codigoAveria = "T4", codigoAveria, NULL)) AS T4, ' +
   'COUNT(IF(codigoAveria = "M1", codigoAveria, NULL)) AS M1, ' +
   'COUNT(IF(codigoAveria = "T5", codigoAveria, NULL)) AS T5, ' +
   'COUNT(IF(codigoAveria = "P1", codigoAveria, NULL)) AS P1, ' +
   'COUNT(IF(codigoAveria = "M6", codigoAveria, NULL)) AS M6, ' +
   'COUNT(IF(codigoAveria = "P2", codigoAveria, NULL)) AS P2, ' +
   'COUNT(IF(codigoAveria = "M5", codigoAveria, NULL)) AS M5, ' +
   'COUNT(IF(codigoAveria = "M7", codigoAveria, NULL)) AS M7, ' +
   'COUNT(IF(codigoAveria = "M8", codigoAveria, NULL)) AS M8, ' +
   'COUNT(IF(codigoAveria = "E1", codigoAveria, NULL)) AS E1, ' +
   'COUNT(IF(codigoAveria = "E2", codigoAveria, NULL)) AS E2, ' +
   'COUNT(IF(codigoAveria = "E3", codigoAveria, NULL)) AS E3, ' +
   'COUNT(IF(codigoAveria = "A1", codigoAveria, NULL)) AS A1, ' +
   'COUNT(IF(codigoAveria = "A2", codigoAveria, NULL)) AS A2, ' +
   'COUNT(IF(codigoAveria = "P3", codigoAveria, NULL)) AS P3, ' +
   'COUNT(IF(codigoAveria = "P4", codigoAveria, NULL)) AS P4, ' +
   'COUNT(IF(codigoAveria = "P5", codigoAveria, NULL)) AS P5, ' +
   'COUNT(IF(codigoAveria = "T2", codigoAveria, NULL)) AS T2, ' +
   'COUNT(IF(codigoAveria = "T3", codigoAveria, NULL)) AS T3, ' +
   'COUNT(IF(codigoAveria = "T6", codigoAveria, NULL)) AS T6, ' +
   'COUNT(IF(codigoAveria = "T7", codigoAveria, NULL)) AS T7, ' +
   'COUNT(IF(codigoAveria = "T8", codigoAveria, NULL)) AS T8, ' +
   'COUNT(IF(codigoAveria = "B1", codigoAveria, NULL)) AS B1, ' +
   'COUNT(IF(codigoAveria = "A3", codigoAveria, NULL)) AS A3 ' +
   'FROM mmp_averias ' +
   'WHERE month(fecAveria) = "' + mes + '" ')

   res.render('dashboard/dashboard', {pqs, avs, pqavs, totav, pqmas }); 
});

module.exports = router;