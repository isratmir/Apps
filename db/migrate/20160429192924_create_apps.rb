class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :title
      t.string :url
      t.text :description
      t.references :app_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :apps, :app_types
  end
end
