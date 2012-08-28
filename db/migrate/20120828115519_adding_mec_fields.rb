class AddingMecFields < ActiveRecord::Migration
  def change
    change_table :applets do |t|
      t.text :objective
      t.text :abstract
      t.text :curriculum
      t.string :theme
      t.string :author
      t.string :language
      t.string :country
      t.string :publisher
      t.text :description
      t.string :rightsholder
      t.string :submiter
      t.string :address
      t.string :license
      t.string :uri
      t.string :other_links
    end

  end
end
