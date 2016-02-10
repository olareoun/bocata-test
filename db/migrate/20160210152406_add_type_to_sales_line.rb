class AddTypeToSalesLine < ActiveRecord::Migration
  def change
    add_column :sales_lines, :type, :string
  end
end
