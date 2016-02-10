class CreateSalesLines < ActiveRecord::Migration
  def change
    create_table :sales_lines do |t|
      t.integer :sales_header_id
      t.integer :item_id

      t.timestamps
    end
  end
end
