class ChangePriceFromFloatToDecimal < ActiveRecord::Migration
  def change
    remove_column :listings, :price

    add_column :listings, :price, :decimal, :precision => 8, :scale => 2
  end
end
