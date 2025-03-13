class AddRentalDateEndToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :rental_date_end, :date
  end
end
