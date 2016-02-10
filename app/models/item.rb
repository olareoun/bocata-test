class Item < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :sales_lines
end