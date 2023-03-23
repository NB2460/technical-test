class AddColumnToMission < ActiveRecord::Migration[7.0]
  def change
    add_reference :missions, :listing, null: false, foreign_key: true
    add_column :missions, :date, :date
    add_column :missions, :price, :integer
  end
end
