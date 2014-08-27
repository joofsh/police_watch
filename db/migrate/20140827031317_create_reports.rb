class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :user

      t.string :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode

      t.float :rating

      t.timestamps
    end
  end
end
