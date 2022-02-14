//conexion
const pool = require("../database");

module.exports = {

  isLoggedIn(req, res, next) {
    if (req.isAuthenticated()) {
      return next();
    }
    return res.redirect("/signin");
  },

  isNotLoggedIn(req, res, next) {
    if (!req.isAuthenticated()) {
      return next();
    }
    return res.redirect("/profile");
  },

  async valipass(req, res, next) {
    const errors = [];
    const { username, name, password, password2 } = req.body;
     //verifico que coincidan contraseñas
     if (password != password2) {
       errors.push({text: 'Las contraseñas no coiciden'});
       res.render('auth/signup', {errors, username, name});
       return
     };
     return next()
  },

  async valipass2(req, res, next) {
    const errors = [];
    const { password, password2 } = req.body;
     //verifico que coincidan contraseñas
    if (password != password2) {
      console.log('no coiciden');
      errors.push({text: 'Las contraseñas no coiciden'});
      res.render("profile", {errors});
      return 
     };
     return next()
  },

  //validacion de registro de usuario
  async valiuser(req, res, next) {
    //obtengo los valores del req.body
    const errors = [];
    const { username, name } = req.body; 
    
    //busco usuario
    const rows = await pool.query(
    "SELECT * FROM users WHERE username = ?", username);
    //verifico si existe usuario
    if (rows.length > 0) {
      errors.push({text: 'El nombre de usuario ya existe'});
      res.render('auth/signup', {errors, username, name});
      return
    }    
    return next()
  }
};
