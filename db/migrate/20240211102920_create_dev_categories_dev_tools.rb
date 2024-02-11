class CreateDevCategoriesDevTools < ActiveRecord::Migration[7.1]
  def change
    create_table :dev_categories_dev_tools do |t|
      t.references :category, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
