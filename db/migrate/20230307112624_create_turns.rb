class CreateTurns < ActiveRecord::Migration[7.0]
  def change
    create_table :turns do |t|
      t.integer :number
      t.references :player, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true
      t.references :characteristic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
