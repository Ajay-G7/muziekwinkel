class CreateMedewerkers < ActiveRecord::Migration
  def self.up
    create_table :medewerkers do |t|
      t.string :password
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :medewerkers
  end
end
