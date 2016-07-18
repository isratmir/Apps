class AddRelationCategoryWebsite < ActiveRecord::Migration
  def change
    add_reference :websites, :category, index: true, foreign_key: true
  end
end
