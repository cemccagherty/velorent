class AddLocationToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :city, :string
    add_column :bikes, :area, :string
  end
end
