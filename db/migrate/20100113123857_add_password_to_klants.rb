class AddPasswordToKlants < ActiveRecord::Migration
  def self.up
    add_column :klants, :password, :string
  end

  def self.down
    remove_column :klants, :password
  end
end
