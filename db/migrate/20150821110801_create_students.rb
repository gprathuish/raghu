class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :dob
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
