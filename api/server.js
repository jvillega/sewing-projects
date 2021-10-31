const express = require('express');
const bodyParser = require("body-parser");
const port = 3070;

// import routes
var api=require('./paths/index');

const app = express();
var router=express.Router();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

app.use('/api',api);

app.listen(port, () => {
    console.log(`Server listening on the port::${port}`);
});
