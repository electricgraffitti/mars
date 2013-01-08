class AddListOrderToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :list_order, :integer
  end
end
