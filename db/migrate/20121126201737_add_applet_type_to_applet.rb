class AddAppletTypeToApplet < ActiveRecord::Migration
  def change
    add_column :applets, :applet_type, :string
  end
end
