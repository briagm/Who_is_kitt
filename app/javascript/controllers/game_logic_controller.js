import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game-logic"
export default class extends Controller {
  static targets = ["timeBar"]

  connect() {
  }

  restart(e) {
    this.timeBarTarget.classList.remove('animate-timer')
    setTimeout(() => {
      this.timeBarTarget.classList.add('animate-timer')
    }, 1000);

  }
}

// const bars = document.querySelectorAll(".round-time-bar");
// button.addEventListener("click", () => {
//   bars.forEach((bar) => {
//     bar.classList.remove("round-time-bar");
//     bar.offsetWidth;
//     bar.classList.add("round-time-bar");
//   });
// });
