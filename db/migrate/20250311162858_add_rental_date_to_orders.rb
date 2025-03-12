class AddRentalDateToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :rental_date, :date
  end
end
