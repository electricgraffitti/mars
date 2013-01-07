class CreatePrintCollaterals < ActiveRecord::Migration
  def change
    create_table :print_collaterals do |t|
      t.string :print_category
      t.string :title
      t.text :description
      t.string :url
      t.string :image

      t.timestamps
    end
  end
  def self.down
    drop_table :print_collaterals
  end
end
