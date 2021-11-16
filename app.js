const express = require('express');
const exphbs  = require('express-handlebars');
const app = express();
const port = 3001;
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
app.use(express.static(path.join(__dirname, 'public/')))

app.get('/', (req, res) => {
    res.render('users/home');
});

app.get('/user/home', (req, res) => {
    res.render('users/home');
});

app.get('/user/document', (req, res) => {
    res.render('users/document');
});


app.get('/user/courses', (req, res) => {
    res.render('users/courses');
});

app.get('/user/teacher', (req, res) => {
    res.render('users/teacher');
});

app.get('/user/coursesRoute', (req, res) => {
    res.render('users/coursesRoute');
});

app.get('/user/contact', (req, res) => {
    res.render('users/contact');
});

app.get('/user/help', (req, res) => {
    res.render('users/help');
});

app.get('/signIn', (req, res) => {
    res.render('account/signIn');
});

app.get('/signUp', (req, res) => {
    res.render('account/signUp');
});
