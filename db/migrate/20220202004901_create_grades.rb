class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :min_gsalary
      t.integer :max_gsalary

      t.timestamps
    end
  end
end
