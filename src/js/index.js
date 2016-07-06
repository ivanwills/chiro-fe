/* globals Ractive, _ */

(function() {
    var options = {};
    options.el = document.querySelector('#container');
    options.template = Ractive.partials.base;
    options.data = {
        term: '',
        events: true
    };

    _.extend(options.components, Ractive.components);
    _.extend(options.computed, {
    });

    var ractive = new Ractive(options);

    ractive.on('*.condition', function(condition) {
        this.set('condition', condition)
            .then(function() {
                this.findComponent('chiro-condition')
                    .set('condition', condition);
            }.bind(this));
    }.bind(ractive));

})();
