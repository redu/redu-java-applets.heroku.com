class Applet < ActiveRecord::Base
  attr_accessible "title", "content", "style", "javascript", "objective", "abstract", "curriculum", "theme", "author", "language", "country", "publisher", "description", "rightsholder", "submiter", "address", "license", "uri", "other_links"
end
