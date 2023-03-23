class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.integer :rooms_number

      t.timestamps
    end
  end
end
