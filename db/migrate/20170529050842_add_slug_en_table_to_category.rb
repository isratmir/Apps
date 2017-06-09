class AddSlugEnTableToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :slug_en, :string
    add_index :categories, :slug_en
  end
end
