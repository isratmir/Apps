class CreateAppTypes < ActiveRecord::Migration
  def change
    create_table :app_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
