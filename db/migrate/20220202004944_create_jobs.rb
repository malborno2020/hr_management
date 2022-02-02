class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :department
      t.integer :min_salary
      t.integer :max_salary
      t.references :grade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
