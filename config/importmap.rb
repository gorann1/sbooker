# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "leaflet", to: "https://ga.jspm.io/npm:leaflet@1.9.3/dist/leaflet-src.js"
pin "leaflet-css", to: "https://ga.jspm.io/npm:leaflet-css@0.1.0/dist/leaflet.css.min.js"
pin '@fortawesome/fontawesome-free', to: 'https://ga.jspm.io/npm:@fortawesome/fontawesome-free@6.1.1/js/all.js'