/* global Ractive */
Ractive.extend({
    template: Ractive.defaults.templates['chiro-condition'],
    isolated: true,
    onrender: function() {
        this.observe('condition', function(newVal) {
            if (!newVal) {
                return;
            }
            console.log('fetching condition', newVal);
            fetch(`/api/condition/${newVal}`)
                .then( (r) => {
                    console.log(r);
                    return r.text();
                })
                .then( (j) => {
                    console.log(j);
                });
        }.bind(this));
    }
});
