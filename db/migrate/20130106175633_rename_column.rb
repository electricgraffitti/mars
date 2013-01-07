class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :categories, :rul_path, :url_path
  end

  def down
  end
end
