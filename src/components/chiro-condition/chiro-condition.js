/* global Ractive */
Ractive.extend({
    template: Ractive.defaults.templates['chiro-condition'],
    isolated: true,
    onrender: function() {
        this.observe('condition', function(newVal) {
            if (!newVal) {
                return;
            }
        }.bind(this));
    }
});
