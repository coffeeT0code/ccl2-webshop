const express = require('express');
const bodyParser = require('body-parser')
const app = express();
const port =  process.env.port || process.env.PORT || 3000;

const cors = require('cors');
app.use(cors());

const fileUpload = require('express-fileupload');
app.use(fileUpload({
    createParentPath: true
}));

const session = require('express-session')

const cookieParser = require('cookie-parser')
app.use(cookieParser())

// serve public folder
app.use(express.static('public'));

const path = require('path');
let ejs = require('ejs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

const indexRouter = require('./routes/index');
const userRouter = require('./routes/user');
const shopRouter = require('./routes/shop');
const itemRouter = require('./routes/item');

app.use('/', indexRouter);
app.use('/user', userRouter);
app.use('/shop', shopRouter);
app.use('/item', itemRouter);

app.listen(port, () => {
    console.log(`Server running at
http://localhost:${port}`);
});
