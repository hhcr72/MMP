const express = require('express');
const router = express.Router();
const pool = require('../database');    

const { isLoggedIn } = require('../lib/auth');

router.get('/mapa/:id', isLoggedIn, async (req, res) => {
    const {id} = req.params;
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE id = ?', [id]);
    //const tit = 'Localización del Parquímetro h' + parq.nParquimetro
    const tit = 'Localización del Parquímetro ' + id
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapas/:id', isLoggedIn, async (req, res) => {
    const errors = [];
    const {id} = req.params;
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE nParquimetro = ?', [id]);
    const tit = 'Localización del Parquímetro ' + id
    //console.log(parq.length);
    if (parq.length < 1) {
        errors.push({text: 'El numero de parquímetro no existe'});
        res.render('mapas/mapa', {errors, tit});
        return
    }  
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros '
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa1', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "1" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 1'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa2', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "2" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 2'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa3', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "3" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 3'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa4', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "4" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 4'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa5', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "5" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 5'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa6', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "6" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 6'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa7', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "7" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 7'
    res.render('mapas/mapa', {parq, tit});
});


router.get('/mapa8', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "8" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetros zona 8'
    res.render('mapas/mapa', {parq, tit});
});

router.get('/mapa9', isLoggedIn, async (req, res) => {
    const parq = await pool.query('SELECT nParquimetro, direccion, latitud, longitud, zona FROM mmp_parquimetros WHERE status = "ACTIVO" and zona = "9" order by id asc');
    const tit = 'Localización de ' + parq.length + ' Parquímetro zona 9'
    res.render('mapas/mapa', {parq, tit});
});


module.exports = router;