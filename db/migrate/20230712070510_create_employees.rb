class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.string :email
      t.string :phone_number
      t.string :company
      t.string :address
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end
