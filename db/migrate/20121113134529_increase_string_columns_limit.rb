class IncreaseStringColumnsLimit < ActiveRecord::Migration
  def up
    ["title", "theme", "author", "language", "country", "publisher", "rightsholder", "submiter", "address", "license", "uri", "other_links"].each do |column|
      change_column :applets, column, :string, :limit => 500
    end
  end

  def down
    ["title", "theme", "author", "language", "country", "publisher", "rightsholder", "submiter", "address", "license", "uri", "other_links"].each do |column|
      change_column :applets, column, :string
    end
  end
end
