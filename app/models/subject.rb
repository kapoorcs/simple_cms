class Subject < ActiveRecord::Base
  attr_accessible :title, :body, :name, :position, :visible
  
  # has_one :page
    #has_one methods
    #subject.page
    #subject.page = page
    
  #has_many methods
     #subject.pages
     #subject.pages << page 
     #subject.pages = [page,page,page]
     #subject.pages.delete(page)
     #subject.pages.clear
     #subject.pages.empty?
     #subject.pages.size
     
  has_many :pages
  
  scope :visible, where(:visible => true)
  scope :invisible, where(:visible => false)
  scope :search, lambda{|query| where(["name LIKE ?", "%#{query}%"])}
  
end
