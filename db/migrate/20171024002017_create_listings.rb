class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :street
      t.string :city
      t.integer :postcode
      t.string :state
      t.date :moving_date
      t.time :moving_time
      t.integer :price
      t.text :description
      t.string :image
      t.integer :creator_id

      t.timestamps
    end
    # add_foreign_key :users, column: :creator_id
  end
end
