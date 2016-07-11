/* global Ractive */
Ractive.extend({
    template: Ractive.defaults.templates['chiro-condition'],
    isolated: true,
    onrender: function() {
        this.observe('condition', function(newVal) {
            if (!newVal) {
                return;
            }
            console.log(`/api/condition/${newVal}`);
            fetch(`/api/condition/${newVal}`)
                .then( (r) => {
                    console.log(r);
                    return r.json();
                })
                .then( function(j) {
                    console.log(j);
                    this.set('data', j.data);
                }.bind(this));
        }.bind(this));
    }
});
