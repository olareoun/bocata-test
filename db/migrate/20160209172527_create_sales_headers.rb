class CreateSalesHeaders < ActiveRecord::Migration
  def change
    create_table :sales_headers do |t|
      t.text :description

      t.timestamps
    end
  end
end
