class AddDetailsToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :beer, :string
    add_column :foods, :dessert, :string
  end
end
