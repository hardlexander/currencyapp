'use strict';

var response = require('./response');
var connection = require('./dbconnection');


exports.allCurrency = function(req, res) {
    connection.query('SELECT * FROM currency', function (error, rows, fields){
        if(error){
            response.internalError(error, res)
        } else{
            if (rows.length != 0){
                response.ok(rows, res)
            }
            else
                response.notfound(res)
        }
    });
};

exports.rate = function(req, res) {
    var tanggal = req.query.tanggal;
    var dari = req.query.dari;
    var ke = req.query.ke;

    connection.query('SELECT * FROM currency c, rate r WHERE c.id = r.currency_id AND c.dari = ? AND c.ke = ? AND r.tanggal = ?',
    [dari, ke, tanggal],
    function (error, rows, fields){
        if(error){
            response.internalError(error, res)
        } else{
            if (rows.length != 0){
                response.ok(rows, res)
            }
            else
                response.notfound(res)
        }
    });
};

exports.add = function(req, res) {
    var dari = req.query.dari;
    var ke = req.query.ke;

    connection.query('INSERT INTO currency (dari, ke) values (?,?)',
    [ dari, ke ], 
    function (error, rows, fields){
        if(error){
            response.internalError(error, res)
        } else{
            response.ok("Berhasil menambahkan currency!", res)
        }
    });
}

exports.delete = function(req, res) {
    var dari = req.query.dari;
    var ke = req.query.ke;

    connection.query('DELETE FROM currency WHERE dari = ? AND ke = ?',
    [ dari, ke ], 
    function (error, rows, fields){
        if(error){
            response.internalError(error, res)
        } else{
            response.ok("Berhasil menghapus currency!", res)
        }
    });
}

exports.list = function (req, res) {
    var tanggal = req.query.tanggal;

    connection.query('SELECT c.dari, c.ke, r.rate FROM currency c, rate r WHERE c.id = r.currency_id AND r.tanggal = ?',
    [ tanggal ], 
    function (error, rows, fields){
        if(error){
            response.internalError(error, res)
        } else{
            if (rows.length != 0){
                response.ok(rows, res)
            }
            else
                response.notfound(res)
        }
    });    
}

exports.trend = function (req, res) {
    var dari = req.query.dari;
    var ke = req.query.ke;

    connection.query('SELECT r.tanggal, r.rate FROM currency c, rate r WHERE c.id = r.currency_id AND c.dari = ? AND c.ke = ? ORDER BY r.tanggal DESC LIMIT 7',
    [dari, ke],
    function (error, rows, fields){
        var rates = [];
        if(error){
            response.internalError(error, res)
        } else{
            if (rows.length != 0){
  
                for (let i = 0; i < rows.length; i++) {
                    rates.push(rows[i].rate)
                }
                
                var variance = rates => (Math.max(...rates) - Math.min(...rates))
                var avg = rates => rates.reduce((a,b) => a + b, 0) / rates.length
                
                var data = {
                    'variance': variance(rates),
                    'average': avg(rates),
                    'data': rows
                }

                response.ok(data, res)
            }
            else {
                response.notfound(res)
            }
                
        }
    });
}


exports.index = function(req, res) {
    response.ok("Hello there the angel from my nightmare", res)
};