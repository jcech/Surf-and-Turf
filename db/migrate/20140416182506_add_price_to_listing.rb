class AddPriceToListing < ActiveRecord::Migration
  def change

    add_column :listings, :price, :float
  end
end
