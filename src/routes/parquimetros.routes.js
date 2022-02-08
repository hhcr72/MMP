//const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');    

const { isLoggedIn } = require('../lib/auth');

router.get('/', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT * FROM mmp_parquimetros order by id asc');
    res.render('parquimetros/list', {parq});
    console.log();
});

router.get('/add', isLoggedIn, async (req, res) => {
    res.render('parquimetros/add');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const pq = await pool.query('SELECT * FROM mmp_parquimetros WHERE id = ?', [id]);
    res.render('parquimetros/edit', { pq: pq[0]});
});


router.post('/edit/:id', isLoggedIn, async (req, res) => {
    // console.log('entro a guardar mod');
    const { id } = req.params;
    const {
        zona,
        nParquimetro,
        nParqAnt,
        direccion,
        entreCalles,
        nllave,
        latitud,
        longitud,
        codPatrimonial,
        nSerie,
        observaciones,
        iccidChip,
        telefono,
        imei,
        dependencia,
        cuentaPadre,
        cuenta,
        status
    } = req.body;
    const ActualizaDatos = {
        zona,
        nParquimetro,
        nParqAnt,
        direccion,
        entreCalles,
        nllave,
        latitud,
        longitud,
        codPatrimonial,
        nSerie,
        observaciones,
        iccidChip,
        telefono,
        imei,
        dependencia,
        cuentaPadre,
        cuenta,
        status
    };
    await pool.query('UPDATE mmp_parquimetros set ? WHERE id = ?', [ActualizaDatos, id]);
    req.flash('success', 'Parquímetro actualizado correctamente');
    res.redirect('/parquimetros');
    //res.redirect('/clientes/search/'+[id]);
});

router.post('/add', isLoggedIn, async (req, res) => {
    //console.log('registro nuevo');
    const {
        zona,
        nParquimetro,
        nParqAnt,
        direccion,
        entreCalles,
        nllave,
        latitud,
        longitud,
        codPatrimonial,
        nSerie,
        observaciones,
        iccidChip,
        telefono,
        imei,
        dependencia,
        cuentaPadre,
        cuenta,
        status
    } = req.body;
    const nuevoPq = {
        zona,
        nParquimetro,
        nParqAnt,
        direccion,
        entreCalles,
        nllave,
        latitud,
        longitud,
        codPatrimonial,
        nSerie,
        observaciones,
        iccidChip,
        telefono,
        imei,
        dependencia,
        cuentaPadre,
        cuenta,
        status
    };
    await pool.query('INSERT INTO mmp_parquimetros set ?', [nuevoPq]);
    req.flash('success', 'Parquímetro guardado correctamente');
    res.redirect('/parquimetros');
});

module.exports = router;