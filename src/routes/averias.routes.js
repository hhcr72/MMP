const express = require('express');
const { Session } = require('express-session');
const router = express.Router();
const pool = require('../database');    

const { isLoggedIn } = require('../lib/auth');
const { valAveria } = require('../lib/validations')


//listado de averias
router.get('/', isLoggedIn, async (req, res) => {
    const averias = await pool.query('SELECT mmp_averias.idAveria, date_format(mmp_averias.fecAveria, "%d-%m-%Y %H:%i") as fecAveria, ' +
    'mmp_averias.parqAveria, mmp_parquimetros.direccion, mmp_averias.codigoAveria, mmp_averias.tipoAveria, mmp_averias.reportaAveria, ' +
    'mmp_averias.placas, mmp_averias.obsAveria, mmp_averias.estado, mmp_averias.tecnicoMM ' +
    'FROM mmp_averias ' +
    'LEFT JOIN mmp_parquimetros ON mmp_averias.parqAveria = mmp_parquimetros.nParquimetro ' + 
    'WHERE mmp_averias.estado = "ACTIVO" OR mmp_averias.estado = "EN PROCESO" order by idAveria asc ');
    res.render('averias/list', {averias});
});

//pantalla de nueva averia
router.get('/add', isLoggedIn, async (req, res) => {
    const pqs = await pool.query('SELECT nParquimetro, direccion FROM mmp_parquimetros WHERE status = "ACTIVO" order by nParquimetro asc');
    const cod = await pool.query('SELECT codigoAveria, descAveria FROM mmp_cat_averias order by codigoAveria asc');
    res.render('averias/add', {pqs, cod});
});



//guardar nueva averia
router.post('/add', isLoggedIn, valAveria, async (req, res) => {
  const parqAveria = req.body.pq.substring(0, 3)
  const codigoAveria = req.body.cod.substring(0, 2)
  const tipoAveria = req.body.cod.substring(5)
  const reportaAveria = req.body.reportaAveria
  const placas = req.body.placas.toUpperCase()
  const obsAveria = req.body.observaciones.toUpperCase()
  const registroAveria = req.user.username
  const pad = (n,s=2) => (`${new Array(s).fill(0)}${n}`).slice(-s);
  const d = new Date();
  const fecAveria = `${pad(d.getFullYear(),4)}-${pad(d.getMonth()+1)}-${pad(d.getDate())} ${pad(d.getHours())}:${pad(d.getMinutes())}:${pad(d.getSeconds())}`
  const nuevaAveria = {
      fecAveria,
      parqAveria,
      reportaAveria,
      codigoAveria,
      tipoAveria,
      obsAveria,
      registroAveria,
      placas
  };
  await pool.query('INSERT INTO mmp_averias set ?', [nuevaAveria]);
  req.flash('success', 'Averia registrada correctamente');
  res.redirect('/averias');
});


//editar averia
router.get('/edit/:id', isLoggedIn, async (req, res) => {
  const { id } = req.params;
  const av = await pool.query('SELECT mmp_averias.*, mmp_parquimetros.direccion FROM mmp_averias LEFT JOIN mmp_parquimetros ON mmp_averias.parqAveria = mmp_parquimetros.nParquimetro WHERE idAveria = ?', [id]);
  const pqs = await pool.query('SELECT nParquimetro, direccion FROM mmp_parquimetros WHERE status = "ACTIVO" order by nParquimetro asc');
  const cod = await pool.query('SELECT codigoAveria, descAveria FROM mmp_cat_averias order by codigoAveria asc');
  res.render('averias/edit', { av: av[0], pqs, cod });
});

//guardar edicion de averia
router.post('/edit/:id', isLoggedIn, async (req, res) => {
  const { id } = req.params;
  const parqAveria = req.body.pq.substring(0, 3)
  const codigoAveria = req.body.cod.substring(0, 2)
  const tipoAveria = req.body.cod.substring(5)
  const reportaAveria = req.body.reportaAveria
  const placas = req.body.placas.toUpperCase()
  const obsAveria = req.body.observaciones.toUpperCase()
  const ActualizaDatos = {
      parqAveria,
      reportaAveria,
      codigoAveria,
      tipoAveria,
      placas, 
      obsAveria
  };
  await pool.query('UPDATE mmp_averias set ? WHERE idAveria = ?', [ActualizaDatos, id]);
  req.flash('success', 'Averia actualizada correctamente');
  res.redirect('/averias');
});

//editar reparacion de averia
router.get('/repair/:id', isLoggedIn, async (req, res) => {
  const { id } = req.params;
  const av = await pool.query('SELECT mmp_averias.idAveria, date_format(mmp_averias.fecAveria, "%d-%m-%Y %H:%i") as fecAveria, ' + 
  'mmp_parquimetros.nParqAnt, mmp_averias.parqAveria, mmp_parquimetros.direccion, mmp_parquimetros.entreCalles, mmp_parquimetros.nllave, ' +
  'mmp_averias.codigoAveria, mmp_averias.tipoAveria, mmp_averias.obsAveria, mmp_averias.estado, mmp_averias.codDiagMM, mmp_averias.tipoDiagMM, ' +
  'mmp_averias.obsMM, mmp_averias.rollo, mmp_averias.bateria, mmp_averias.boton, mmp_averias.impresora, ' +
  'mmp_averias.pantalla, mmp_averias.antitrombon, mmp_averias.micros, mmp_averias.modem, ' +
  'mmp_averias.scrow, mmp_averias.selector, mmp_averias.panel, mmp_averias.logica ' +
  'FROM mmp_averias ' +
  'LEFT JOIN mmp_parquimetros ON mmp_averias.parqAveria = mmp_parquimetros.nParquimetro ' +
  'WHERE mmp_averias.idAveria = ?', [id]);
  const diag = await pool.query('SELECT codigoDiag, diagnosticoDiag, solucionDiag FROM mmp_cat_diagnosticos order by codigoDiag asc');
  res.render('averias/repair', { av: av[0], diag });
});

//guardar edicion de reparacion de averia
router.post('/repair/:id', isLoggedIn, async (req, res) => {
  const { id } = req.params;
  const codDiagMM = req.body.cDiag.substring(0, 3)
  const tipoDiagMM = req.body.cDiag.substring(6)
  const tecnicoMM = req.user.username
  const pad = (n,s=2) => (`${new Array(s).fill(0)}${n}`).slice(-s);
  const d = new Date();
  const fechaSolucionMM = `${pad(d.getFullYear(),4)}-${pad(d.getMonth()+1)}-${pad(d.getDate())} ${pad(d.getHours())}:${pad(d.getMinutes())}:${pad(d.getSeconds())}`
  const obsMM = req.body.obsMM
  const rollo = req.body.rollo
  const bateria = req.body.bateria
  const boton = req.body.boton
  const impresora = req.body.impresora
  const pantalla = req.body.pantalla
  const antitrombon = req.body.antitrombon
  const micros = req.body.micros
  const modem = req.body.modem
  const scrow = req.body.scrow
  const selector = req.body.selector
  const panel = req.body.panel
  const logica = req.body.logica
  const estado = req.body.estado
  
  const ActualizaDatos = {
    codDiagMM,
    tipoDiagMM,
    tecnicoMM,
    fechaSolucionMM,
    obsMM,
    rollo,
    bateria,
    boton,
    impresora,
    pantalla,
    antitrombon,
    micros,
    modem,
    scrow,
    selector,
    panel,
    logica,
    estado
  };    
  await pool.query('UPDATE mmp_averias set ? WHERE idAveria = ?', [ActualizaDatos, id]);
  req.flash('success', 'Averia actualizada correctamente');
  res.redirect('/averias');
});

module.exports = router;