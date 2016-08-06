class CreateWpracticeProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :wpractice_products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
