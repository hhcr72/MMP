const { Router } = require('express');
const express = require('express');
const passport = require('passport');
const router = express.Router();
const pool = require('../database');    
const helpers = require("../lib/helpers");


const { isLoggedIn, isNotLoggedIn, valipass, valiuser, valipass2 } = require('../lib/auth');

router.get('/', isLoggedIn, async (req, res) => {
    const users = await pool.query('SELECT * FROM users order by id desc');
    res.render('auth/list', {users});
});

router.get('/signup', isLoggedIn,  (req, res) => {
    res.render('auth/signup');
});

router.post('/signup', isLoggedIn, valipass, valiuser, passport.authenticate('local.signup', {
    successRedirect: '/',
    failureRedirect: '/signup', 
    failureFlash: true
}));

router.get('/signin', isNotLoggedIn, (req, res) => {
    res.render('auth/signin');
});

router.post('/signin', (req, res, next) => {
    passport.authenticate('local.signin', {
        successRedirect: '/',
        failureRedirect: '/signin',
        failureFlash: true        
    })(req, res, next);
});

router.get('/profile', isLoggedIn, (req, res) => {   
    res.render('profile');
}); 

router.get('/logout', (req, res) => {   
    req.logOut();
    res.redirect('/signin')
}); 

//contraseña
router.get('/pass/:id', isLoggedIn, (req, res) => {   
    res.render('pass');
}); 

//guardar actualizacion de contraseña
router.post('/passUpdate/:id', isLoggedIn, valipass2, async (req, res) => {
    const { id } = req.params;
    const oldpassword = req.body.password
    const password = await helpers.encryptPassword(oldpassword);
    const ActualizaDatos = {
        password
    };    
    await pool.query('UPDATE users set ? WHERE id = ?', [ActualizaDatos, id]);
    req.flash('success', 'Contraseñe actualizada correctamente');
    res.redirect('/profile');
  });

//editar usuario
router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const user_ = await pool.query('SELECT id, username, name, usertype, module, ' + 
    'admin_atrib, mto_atrib, recepcion_atrib, direccion_atrib, operaciones_atrib ' +
    'FROM users ' +
    'WHERE id = ?', [id]);
    res.render('auth/edit', {user_: user_[0]});
  });


//guardar actualizacion de usuario
router.post('/update/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const username = req.body.username
    const name = req.body.name
    const usertype = req.body.usertype
    const module = req.body.module
    const admin_atrib = req.body.admin_atrib
    const mto_atrib = req.body.mto_atrib
    const recepcion_atrib = req.body.recepcion_atrib
    const direccion_atrib = req.body.direccion_atrib
    const operaciones_atrib = req.body.operaciones_atrib
    
    const ActualizaDatos = {
      username,
      name,
      usertype,
      module,
      admin_atrib,
      mto_atrib,
      recepcion_atrib,
      direccion_atrib,
      operaciones_atrib
    };    
    await pool.query('UPDATE users set ? WHERE id = ?', [ActualizaDatos, id]);
    req.flash('success', 'Usuario actualizado correctamente');
    res.redirect('/auth');
  });


module.exports = router;