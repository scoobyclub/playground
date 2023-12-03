import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["input", "output"]
    static values = {number: Number}

    connect() {
    }

    clicked() {
        this.numberValue++
    }

    changed() {
        this.outputTarget.textContent = this.inputTarget.value
    }
}
