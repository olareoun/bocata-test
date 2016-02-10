class Menu < ActiveRecord::Base
  attr_accessible :sales_header_id, :sales_lines_attributes
  has_many :sales_lines

  accepts_nested_attributes_for :sales_lines, :allow_destroy => true
end
