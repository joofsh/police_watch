class CreatePolice < ActiveRecord::Migration
  def change
    create_table :police do |t|
      t.references :police_department

      t.string :badge_id
      t.string :name

      t.timestamps
    end
  end
end
