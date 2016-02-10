class AddMenuIdToSalesLine < ActiveRecord::Migration
  def change
    add_column :sales_lines, :menu_id, :integer
  end
end
