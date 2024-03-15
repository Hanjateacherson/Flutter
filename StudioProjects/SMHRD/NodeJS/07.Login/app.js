const express = require('express');
const app = express();
const indexRouter = require('./routes');
const nunjucks = require('nunjucks');
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({extended : true}));
app.use('/', indexRouter);
app.use(express.static(__dirname+'/public'));

app.set('view engine', 'html');
nunjucks.configure('views', {
    express : app,
    watch : true
})

app.set('port', process.env.PORT || 8000);
app.listen(app.get('port'), ()=>{
    console.log(`Sever is listening on port ${app.get('port')}`);
})