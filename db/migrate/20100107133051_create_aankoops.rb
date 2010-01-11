class CreateAankoops < ActiveRecord::Migration
  def self.up
    create_table :aankoops do |t|
      t.references :product
      t.references :klant
      t.float :prijs
      t.datetime :datum
      t.boolean :betaald

      t.timestamps
    end
  end

  def self.down
    drop_table :aankoops
  end
end
