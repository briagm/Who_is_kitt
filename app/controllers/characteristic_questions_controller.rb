class CharacteristicQuestionsController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @characteristic_question = CharacteristicQuestion.new(characteristic_question_params)
    @characteristic_question.game = @game
    @characteristic_question.player = Player.find_by(user: current_user, game: @game)

    if @characteristic_question.save
      GameChannel.broadcast_to(
        @game,
        render_to_string(partial: "characteristic_question", locals: { char_question: @characteristic_question })
      )
      head :ok
    else
      render "games/show", status: :unprocessable_entity
    end
  end

  private

  def characteristic_question_params
    params.require(:characteristic_question).permit(:characteristic_id)
  end
end
