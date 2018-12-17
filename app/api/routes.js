'use strict';

module.exports = function(app) {
    var controller = require('./controller');

    app.route('/')
        .get(controller.index);

    app.route('/all')
        .get(controller.allCurrency);
        
    app.route('/rate')
        .get(controller.rate);

    app.route('/add')
        .get(controller.add);

    app.route('/delete')
        .get(controller.delete);

    app.route('/list')
        .get(controller.list);

    app.route('/trend')
        .get(controller.trend);
};