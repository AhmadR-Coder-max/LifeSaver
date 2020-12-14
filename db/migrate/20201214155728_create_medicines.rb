class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :medicine_code, null: false
      t.string :name, null: false
      t.integer :med_type, default: 0
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :medicines, [:name, :med_type], unique: true
    add_index :medicines, :medicine_code, unique: true
  end
end
