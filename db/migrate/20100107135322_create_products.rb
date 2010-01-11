class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :titel
      t.string :prijs
      t.date :jaar
      t.string :artiest
      t.string :genre
      t.string :lengte
      t.string :coverart
      t.references :album
      t.integer :tracknr
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
