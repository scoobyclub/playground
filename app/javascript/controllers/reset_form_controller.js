import { Controller } from "@hotwired/stimulus"
console.log('reset_form_controller.js is loaded');
export default class extends Controller {

    reset() {
        this.element.reset()
    }
}