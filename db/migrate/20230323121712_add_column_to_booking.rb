class AddColumnToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :listing, null: false, foreign_key: true
  end
end
