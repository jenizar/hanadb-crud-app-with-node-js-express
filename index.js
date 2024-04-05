//use path module
const path = require('path');
//use express module
const express = require('express');
//use hbs view engine
const hbs = require('hbs');
//use bodyParser middleware
const bodyParser = require('body-parser');
const app = express();
//const session = require('express-session'); 
//use sap hanadb database
var hana = require('@sap/hana-client');
var conn = hana.createConnection();
var conn_params = {
  serverNode  : '2a5b9eaa-3a38-42fd-b10f-fc34db808672.hana.trial-us10.hanacloud.ondemand.com:443',
  uid         : 'DBADMIN',
  pwd         : 'MyHanadb911_'
};
//Create Connection
conn.connect(conn_params, function(err) {
  if (err) throw err;
  conn.exec('SELECT * FROM CRUD_DB.PRODUCT ORDER BY PRODUCT_ID', function (err, result) {
    if (err) throw err;
    console.log(err);
    conn.disconnect();
  });
  console.log('Database Connected Successfully..!!');
}); 


//set views file
app.set('views', path.join(__dirname, 'views'));
//set view engine
app.set('view engine', 'hbs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
//set folder public as static folder for static file
app.use('/assets', express.static(__dirname + '/public'));

//route for homepage
app.get('/', (req, res) => {
  conn.connect(conn_params, function(err) {
     conn.exec('SELECT * FROM CRUD_DB.PRODUCT ORDER BY PRODUCT_ID',  function (err, results) {
      conn.exec('SELECT COUNT(*) AS tdata FROM CRUD_DB.PRODUCT',  function (err, dbrecords) {
        if (err) throw err;    
        totaldata = dbrecords[0].TDATA;          
        res.render('product_view', {
            results: results,
            dbrecords: totaldata
        });
      });   
    });     
  });
});

//route for insert data
app.post('/save', (req, res) => {
  let product_id = req.body.product_id;
  let product_name = req.body.product_name;
  let product_category = req.body.product_category; 
    let sql = "INSERT INTO CRUD_DB.PRODUCT(PRODUCT_ID, PRODUCT_NAME, PRODUCT_CATEGORY) VALUES ('"+product_id+"', '"+product_name+"', '"+product_category+"')";
    let query = conn.exec(sql, (err, results) => {      
        if (err) throw err;
        res.redirect('/');
    });
});

//route for update datas
app.post('/update', (req, res) => {
  let product_id = req.body.product_id;
  let product_name = req.body.product_name;
  let product_category = req.body.product_category;  
  let sql = "UPDATE CRUD_DB.PRODUCT SET PRODUCT_NAME='" + product_name + "', PRODUCT_CATEGORY='" + product_category + "' WHERE PRODUCT_ID=" + product_id;
  conn.connect(conn_params, function(err) {
  let query = conn.exec(sql, (err, results) => {
    if (err) throw err;
      res.redirect('/');
    });
  });  
});

//route for delete data
app.post('/delete', (req, res) => {
  let product_id = req.body.product_id;
  let product_name = req.body.product_name;
  let product_category = req.body.product_category;  
    let sql = 'DELETE FROM CRUD_DB.PRODUCT WHERE PRODUCT_ID=' + product_id;
   conn.connect(conn_params, function(err) {
    let query = conn.exec(sql, (err, results) => {
      if (err) throw err;
      res.redirect('/');
  });
  });
});

//server listening
const port = process.env.PORT || 3002;
app.listen(port, function () {
    console.log("Server is running at port " + port);
});    
