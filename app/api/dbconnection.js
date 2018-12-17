var mysql = require('mysql');

var con = mysql.createConnection({
  host: process.env.DATABASE_HOST || "127.0.0.1",
  user: "root",
  password: "",
  database: "currencyapp"
});

con.connect(function (err){
    if(err) throw err;
});

module.exports = con;