class ChangeForeignKeysInTurns < ActiveRecord::Migration[7.0]
  def change
    remove_reference :turns, :card
    remove_reference :turns, :characteristic

    add_reference :turns, :card, foreign_key: true
    add_reference :turns, :characteristic, foreign_key: true
  end
end
