class CreateKlants < ActiveRecord::Migration
  def self.up
    create_table :klants do |t|
      t.string :voornaam
      t.string :achternaam
      t.boolean :geslacht
      t.date :geboortedatum
      t.string :email
      t.string :creditcard
      t.string :postcode
      t.string :huisnummer

      t.timestamps
    end
  end

  def self.down
    drop_table :klants
  end
end
