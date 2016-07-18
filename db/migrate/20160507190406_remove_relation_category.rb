class RemoveRelationCategory < ActiveRecord::Migration
  def change
    remove_column :websites, :category_id
  end
end
