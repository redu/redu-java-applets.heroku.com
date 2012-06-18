class CreateApplets < ActiveRecord::Migration
  def change
    create_table :applets do |t|
      t.string :title
      t.text :content
      t.text :style
      t.text :javascript

      t.timestamps
    end
  end
end
