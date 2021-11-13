const express = require('express');
const exphbs  = require('express-handlebars');
const app = express();
const port = 3000;
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
app.get('/', (req, res) => {
    res.render('home');
});
app.get('/about-us', (req, res) => {
    res.render('about-us')
});
app.get('/', middleware.requireLogin, (req, res) =>{
    const payload = {
        pageTitle: 'Home'
    };
    res.status(200).render('home', payload);
});
