class AddTablesListingsComments < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :body
      t.belongs_to :user

      t.timestamps
    end
    create_table :comments do |t|
      t.text :body
      t.belongs_to :user
      t.belongs_to :listing

      t.timestamps
    end
    add_column :users, :name, :string
  end
end
