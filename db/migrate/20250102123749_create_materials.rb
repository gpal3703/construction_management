class CreateMaterials < ActiveRecord::Migration[8.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :qualtity
      t.decimal :cost
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
