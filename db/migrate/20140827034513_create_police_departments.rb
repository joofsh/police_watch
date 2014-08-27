class CreatePoliceDepartments < ActiveRecord::Migration
  def change
    create_table :police_departments do |t|

      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :state

      t.integer :state_department_id


      t.timestamps
    end
  end
end
