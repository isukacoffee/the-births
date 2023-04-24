class ChangeColumnDefaultToColorPapers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :color_papers, :question, from: false, to: "0"
  end
end
