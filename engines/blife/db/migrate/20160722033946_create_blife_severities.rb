class CreateBlifeSeverities < ActiveRecord::Migration[5.0]
  def change
    create_table :blife_severities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
