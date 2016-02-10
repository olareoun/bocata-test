class RemoveSalesHeaderIdFromSalesLine < ActiveRecord::Migration
  def up
    remove_column :sales_lines, :sales_header_id
  end

  def down
    add_column :sales_lines, :sales_header_id, :integer
  end
end
