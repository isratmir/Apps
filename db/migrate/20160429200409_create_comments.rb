class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.belongs_to :app, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :apps
  end
end
