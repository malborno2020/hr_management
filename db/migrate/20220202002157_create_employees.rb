class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :telephone
      t.string :rut
      t.date :hire_date
      t.string :status
      t.date :birth_date
      t.references :role, null: false, foreign_key: true
      t.references :business, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
