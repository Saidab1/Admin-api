class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :last_name
      t.date :date_birth
      t.string :address
      t.string :type_doc_id
      t.integer :doc_id_number
      t.string :job_position
      t.string :job_area
      t.date :hiring_date
      t.string :email

      t.timestamps
    end
  end
end
