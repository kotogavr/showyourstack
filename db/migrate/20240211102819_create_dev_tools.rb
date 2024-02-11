class CreateDevTools < ActiveRecord::Migration[7.1]
  def change
    create_table :dev_tools do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
