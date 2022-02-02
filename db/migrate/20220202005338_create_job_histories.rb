class CreateJobHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :job_histories do |t|
      t.date :start_date
      t.date :end_date
      t.references :employee, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
