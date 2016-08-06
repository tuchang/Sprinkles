class CreateBlifePriorities < ActiveRecord::Migration[5.0]
  def change
    create_table :blife_priorities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
