class CreateBirthdays < ActiveRecord::Migration[7.0]
  def change
    create_table :birthdays do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth

      t.timestamps
    end
  end
end
