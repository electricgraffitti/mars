class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.string :rul_path
      t.string :image

      t.timestamps
    end
  end
  def self.down
    drop_table :categories
  end
end
