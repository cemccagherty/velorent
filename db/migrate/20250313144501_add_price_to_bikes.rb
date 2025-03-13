class AddPriceToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :price, :integer, null: true
  end
end
