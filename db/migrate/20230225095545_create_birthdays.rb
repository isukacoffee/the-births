class CreateBirthdays < ActiveRecord::Migration[6.0]
  def change
    create_table :birthdays do |t|
      t.date        :date,                       null: false
      t.references  :user,                       null: false, foreign_key: true
      t.string      :celebrate_person_name,      null: false
      t.timestamps
    end
  end
end
