// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import GameLogicController from "./game_logic_controller"
application.register("game-logic", GameLogicController)

import GameSubscriptionController from "./game_subscription_controller"
application.register("game-subscription", GameSubscriptionController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)
