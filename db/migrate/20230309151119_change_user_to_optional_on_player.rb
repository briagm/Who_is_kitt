class ChangeUserToOptionalOnPlayer < ActiveRecord::Migration[7.0]
  def change
    change_column :players, :user_id, :integer, null: true
  end
end
