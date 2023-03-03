class CreateUsersAndDepartmentsAndEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_title, null: false
      t.float :salary, null: false
      t.string :skills
      t.string :requirements

      t.timestamps
    end

    create_table :departments do |t|
      t.string :department_name, null: false
      t.integer :manager_id

      t.timestamps
    end
    
    create_table :employees do |t|
      t.string :fullname, null: false
      t.string :phone
      t.integer :manager_id
      t.integer :role_id, null: false
      t.integer :department_id
      t.float :salary, null: false
      t.date :hire_date, null: false
      
      t.timestamps
    end
    create_table :roles do |t|
      t.string :role_name, null: false
      
      t.timestamps
    end
  end
end
