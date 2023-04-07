class RemoveBirthdayFromPictures < ActiveRecord::Migration[6.0]
  def change
    remove_reference :pictures, :birthday, null: false, foreign_key: true
  end
end
