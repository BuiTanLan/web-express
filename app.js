const express = require('express');
const exphbs  = require('express-handlebars');
const app = express();
const port = 3000;
const path = require('path')
const middleware = require('./middleware');
const server = app.listen(port, () => console.log(`Server is listening on ${port}`));

app.engine('.hbs', exphbs({
    //defaultLayout: 'main',
    extname: '.hbs'
}));
app.set('view engine', '.hbs');

// Router
// const loginRoute = require('./routes/loginRoutes');
// app.use('/login', loginRoute);
app.use(express.static(path.join(__dirname, 'public')))

app.get('/', (req, res) => {
    res.render('users/home');
});

