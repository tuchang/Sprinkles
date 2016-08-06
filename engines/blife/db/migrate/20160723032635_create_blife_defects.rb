class CreateBlifeDefects < ActiveRecord::Migration[5.0]
  def change
    create_table :blife_defects do |t|
      t.string :summary
      t.text :description
      t.text :expected
      t.text :actual
      t.text :steps_to_reproduce
      t.references :blife_severity, foreign_key: true
      t.references :blife_priority, foreign_key: true

      t.timestamps
    end
  end
end
