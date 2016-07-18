class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.string :url
      t.text :description
      t.text :keywords
      t.attachment :image

      t.timestamps null: false
    end
  end
end
