class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references  :user,                null: false, foreign_key: true
      t.references  :birthday,            null: false, foreign_key: true
      t.string      :sentence,            null: false 
      t.timestamps
    end
  end
end
