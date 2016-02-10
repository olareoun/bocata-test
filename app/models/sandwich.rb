class Sandwich < Item
  attr_accessible :name, :price
  has_many :sales_lines
end
