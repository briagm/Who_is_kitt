class CreateCharacteristicQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :characteristic_questions do |t|
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.references :characteristic, null: false, foreign_key: true
      t.boolean :answer

      t.timestamps
    end
  end
end
