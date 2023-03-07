class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.boolean :match
      t.references :character, null: false, foreign_key: true
      t.references :characteristic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
