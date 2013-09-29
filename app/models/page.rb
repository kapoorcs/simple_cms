class Page < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :permalink, :position
  
  
  belongs_to :subject
  has_many :sections
  
end
