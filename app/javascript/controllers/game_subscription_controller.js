import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {

  static values = { gameId: Number } // Définit une valeur nommée gameId avec un type Number
  static targets = ["questions"] // Définit une cible nommée questions

  // Cette méthode est appelée lorsque le contrôleur est connecté à la page
  connect() {
    console.log("GameSubscriptionController")
    // Création d'un abonnement à un canal Action Cable
    // this.channel = createConsumer().subscriptions.create(
    //   { channel: "GameChannel", id: this.gameIdValue }, // Spécification du nom du canal et de l'ID du jeu
    //   {
    //     // Cette fonction est appelée lorsque des données sont reçues sur le canal
    //     received: data => this.questionsTarget.insertAdjacentHTML("beforeend", data) // Insère les données dans la cible "questions"
    //   }
    // )
    console.log(`Abonnement au jeu avec l'ID ${this.gameIdValue}.`) // Affiche un message dans la console indiquant que l'abonnement a été créé
  }
}


  // connect() {
  //   console.log("GameSubscriptionController")
  //   this.channel = createConsumer().subscriptions.create(
  //     { channel: "GameChannel", id: this.gameIdValue },
  //     { received: (data) => this.renderPartial(data) }
  //   );
  // }

  // renderPartial(data) {
  //   const { game, show_data } = data;
  //  const gameShow = document.querySelector(`#game_${game.id}`);
  //   console.log(gameShow)
  //   if (gameShow && show_data) { gameShow.outerHTML = show_data; }
  // }

  // disconnect() {
  //   this.channel.unsubscribe();
  // }
