class CreateTableWebsitesCategories < ActiveRecord::Migration
  def change
    create_table :websites_categories, id: false do |t|
      t.belongs_to :website, index: true
      t.belongs_to :category, index: true
    end
  end
end
