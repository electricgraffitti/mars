class AddListOrderToPrintCollaterals < ActiveRecord::Migration
  def change
    add_column :print_collaterals, :list_order, :integer
  end
end
