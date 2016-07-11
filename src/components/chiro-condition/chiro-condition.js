/* global Ractive */
Ractive.extend({
    template: Ractive.defaults.templates['chiro-condition'],
    isolated: true,
    data: () => {
        return {
            fields: [
                { field: 'condition', label: 'Condition' },
                { field: 'condition_desc', label: 'Description' },
                { field: 'condition_description_source', label: 'Description Source' },
                { field: 'clasification_type', label: 'Classification' },
                { field: 'clasification_sub_type', label: 'Subtype' },
                { field: 'chiro', label: 'Chiro' },
                { field: 'age', label: 'Age' },
                { field: 'gender', label: 'Gender' },
                { field: 'etiology', label: 'Etiology' },
                { field: 'ddx', label: 'DDX' },
                { field: 'comorbid', label: 'Comorbid' },
                { field: 'demographics', label: 'Demographics' },
                { field: 'grouping', label: 'Grouping' },
                { field: 'mechanism', label: 'Mechanism' },
            ]
        };
    },
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
        this.on('save', this.save.bind(this));
    },
    save: function() {
        let form = new FormData();
        let data = this.get('data');
        for (var k in data) {
            if (data.hasOwnProperty(k)) {
                form.append(k, data[k]);
            }
        }

        fetch(`/api/condition/save`, {
            method: 'POST',
            body: form
        })
        .then( (r) => {
            console.log(r);
        });
        console.log('save', this.get('data'), form);
    }
});
