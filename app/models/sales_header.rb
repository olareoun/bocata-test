class SalesHeader < ActiveRecord::Base
  attr_accessible :description, :menus_attributes
  
  has_many :menus 

  accepts_nested_attributes_for :menus, :allow_destroy => true
end
