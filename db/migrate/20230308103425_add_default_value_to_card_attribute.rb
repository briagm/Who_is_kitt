class AddDefaultValueToCardAttribute < ActiveRecord::Migration[7.0]
  def change
    change_column :cards, :active, :boolean, default: true
  end
end
