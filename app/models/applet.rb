class Applet < ActiveRecord::Base
  attr_accessible :content, :javascript, :style, :title
end
