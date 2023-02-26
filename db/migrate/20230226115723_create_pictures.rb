class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string      :title,           null: false
      t.references  :user,            null: false, foreign_key: true
      t.references  :birthday,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
