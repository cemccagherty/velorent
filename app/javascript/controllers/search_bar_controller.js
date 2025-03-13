import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-bar"
export default class extends Controller {
  static targets = ["search"]


  connect() {
    // console.log("hello")
  }

}
