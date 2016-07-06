/* global Ractive */
Ractive.extend({
    template: Ractive.defaults.templates['chiro-search'],
    isolated: true,
    oninit: function () {
        var value = this.get('value');
        if (!value) {
            this.set('value', localStorage.getItem('condition'));
        }
    },
    onrender: function() {
        this.on('search', function (e) {
            var value  = this.get('value'),
                search = this.get('search');

            // ignore if search done
            if (value === search) {
                return;
            }

            this.set('search', value);

            console.log(e.original);
            localStorage.setItem('condition', value);
            this.fire('condition', value);
        }.bind(this));
    }
});
