class CreateCommentaars < ActiveRecord::Migration
  def self.up
    create_table :commentaars do |t|
      t.references :product
      t.references :klant
      t.text :text
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :commentaars
  end
end
