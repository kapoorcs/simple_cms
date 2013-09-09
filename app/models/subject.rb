class Subject < ActiveRecord::Base
  attr_accessible :title, :body, :name, :position, :visible
end
