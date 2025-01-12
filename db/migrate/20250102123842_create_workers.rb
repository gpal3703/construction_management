class CreateWorkers < ActiveRecord::Migration[8.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :mobile_number
      t.string :address
      t.string :role
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
