class RemovePictureFromColorPapers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :color_papers, :picture, null: false, foreign_key: true
  end
end
