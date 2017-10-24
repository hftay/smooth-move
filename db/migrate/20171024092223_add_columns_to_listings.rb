class AddColumnsToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :title, :text
    add_column :listings, :open, :boolean
    add_column :listings, :num_helpers_needed, :integer
  end
end
