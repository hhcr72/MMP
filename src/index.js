require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const flash = require('connect-flash');
const exphbs = require('express-handlebars');
const path = require('path');
const session = require('express-session');
const MySQLStore = require('express-mysql-session');
const passport = require('passport');
const ember = require('ember-truth-helpers');


const { database } = require('./keys');
const { request } = require('http');

//inicializacion
const app = express();
require('./lib/passport');

//settings
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', exphbs({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layouts'),
    partialsDir: path.join(app.get('views'), 'partials'),
    extname: '.hbs',
    helpers: require('./lib/handlebars')
}));
app.set('view engine', '.hbs');

//middlewares 

//muestra datos en consola
app.use(session({
    secret: '$m4nt3n1m13nt0&',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: true },
    store: MySQLStore(database)
}));


app.use(flash());
app.use(morgan('dev')); 
app.use(express.urlencoded({extended: false}));
app.use(express.json());
app.use(passport.initialize());
app.use(passport.session());

//Global Variables
app.use((req, res, next) => {
    app.locals.success = req.flash('success');
    app.locals.message = req.flash('message');
    app.locals.user = req.user;
    next();
});


//Routes
app.use(require('./routes/index.routes'));
app.use(require('./routes/authentication.routes'));
//app.use(require('./routes/averias.routes'));
app.use('/dashboard', require('./routes/dashboard.routes'));
app.use('/auth', require('./routes/authentication.routes'));
app.use('/parquimetros', require('./routes/parquimetros.routes'));
app.use('/averias', require('./routes/averias.routes'));
app.use('/mapas', require('./routes/mapas.routes'));


//public
app.use(express.static(path.join(__dirname, 'public')))
app.use(express.static(path.join(__dirname, 'js')))

//start server
app.listen(app.get('port'), () => {
    console.log('Server on port', app.get('port'));
});