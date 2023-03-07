class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.boolean :guess
      t.boolean :active
      t.references :character, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
