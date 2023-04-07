class RemoveBirthdayFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :comments, :birthday, null: false, foreign_key: true
  end
end
