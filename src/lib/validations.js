//conexion
const pool = require("../database");


module.exports = {
    //validacion para saber si el pq tiene averias
    async valAveria(req, res, next) {
        //creo cunsulta
        const pq = req.body.pq.substring(0, 3)

        const rows = await pool.query("SELECT idAveria, parqAveria, estado FROM mmp_averias WHERE estado != 'FINALIZADO' AND parqAveria = ?", pq);
        // verifico si tiene averias
        if (rows.length > 0) {     
             req.flash('success', 'El parquimetro ' + req.body.pq + ' ya tiene averia en proceso...');
             res.redirect('/averias/add');
        } else { return next(); } 
    }

    //validacion para acceder a opciones de administrador
    // ValAdmin(req, res, next) {
    //     const errors = [];
    //     if (req.user.usertype == 'Administrador') {
    //       return next();
    //     }
    //     errors.push({text: 'Usted necesita Permisos de Administrador para acceder a esta sección'});
    //     return res.render("index", {errors});
    //   },
    
    //validacion para acceder a opciones de usuario de mantenimiento
    // ValMantenimiento(req, res, next) {
    //     const errors = [];
    //     if (req.user.usertype == 'Mantenimiento') {
    //       return next();
    //     }

    //   }
}
