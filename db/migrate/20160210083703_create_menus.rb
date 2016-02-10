class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :sales_header_id

      t.timestamps
    end
  end
end
