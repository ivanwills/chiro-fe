/* global Ractive */
Ractive.extend({
    template: Ractive.defaults.templates['chiro-search'],
    isolated: true,
    onrender: function() {
        this.on('search', function (e) {
            var value  = this.get('value'),
                search = this.get('search');

            // ignore if search done
            if (value === search) {
                return;
            }

            this.set('search', value);

            if (e.original === 'blur') {
                this.fire('condition', value);
            }
        }.bind(this));
    }
});
