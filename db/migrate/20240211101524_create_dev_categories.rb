class CreateDevCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :dev_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
