class AddColorPaperToPictures < ActiveRecord::Migration[6.0]
  def change
    add_reference :pictures, :color_paper, null: false, foreign_key: true
  end
end
