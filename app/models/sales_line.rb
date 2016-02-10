class SalesLine < ActiveRecord::Base
  attr_accessible :item_id, :menu_id, :type
  
  belongs_to :item
  belongs_to :menu
end