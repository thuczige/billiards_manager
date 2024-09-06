import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  backToTop() {
    document.body.scrollTop = 0
    document.documentElement.scrollTop = 0
  }
}
