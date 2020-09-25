class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :department_code
      t.date  :birthday
    end
  end
end
