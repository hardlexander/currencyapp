'use strict';

exports.ok = function(values, res) {
  var data = {
      'status_code': 200,
      'data': values
  };
  res.json(data);
  res.end();
};

exports.notfound = function(res) {
    var data = {
        'status_code': 404,
        'pesan': 'insufficient data'
    };
    res.json(data);
    res.end();
  };

  exports.internalError = function(err, res) {
    var data = {
        'status_code': 501,
        'pesan': 'Internal Server Error',
        'error': err
    };
    
    res.json(data);
    res.end();
  };