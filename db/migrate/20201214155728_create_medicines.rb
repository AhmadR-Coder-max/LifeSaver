class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :status
      t.boolean :active

      t.timestamps
    end
  end
end
