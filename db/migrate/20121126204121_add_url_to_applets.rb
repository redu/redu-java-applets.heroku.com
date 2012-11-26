class AddUrlToApplets < ActiveRecord::Migration
  def change
    add_column :applets, :direct_url, :string
  end
end
