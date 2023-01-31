// map_controller.js
import { Controller } from "@hotwired/stimulus"
import "leaflet/dist/leaflet.css"
import L from "leaflet"

export default class extends Controller {
    static targets = [
        "container",
    ]

    connect() {
        this.map = L.map(this.containerTarget, {
            zoomDelta: 0.5,
            zoomSnap: 0.5,
        })

        // this.map.setView() etc... as normal.

        // Load layers and setup event handlers, for example:
        fetch("http://example.com/data.geojson")
            .then(response => response.json())
            .then(data => {
                L.geoJSON(data, {
                    onEachFeature: (feature, layer) => {
                        layer.on('click', () => this.onClick(layer))
                    }
                })
            })

    }

    onClick(layer) {
        console.log(layer)
    }
}
