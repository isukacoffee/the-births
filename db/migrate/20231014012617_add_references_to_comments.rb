class AddReferencesToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :birthday, null: false, foreign_key: true
  end
end
