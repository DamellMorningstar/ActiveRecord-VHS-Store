class AddColumnToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :created_at, :datetime
    add_column :rentals, :client_id, :integer
    add_column :rentals, :vhs_id, :integer
  end
end
