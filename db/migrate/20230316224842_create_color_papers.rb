class CreateColorPapers < ActiveRecord::Migration[6.0]
  def change
    create_table :color_papers do |t|
      t.references  :user,                    null: false, foreign_key: true
      t.references  :picture,                 null: false, foreign_key: true
      t.references  :birthday,                null: false, foreign_key: true
      t.integer     :question,                null: false, defalut: 0
      t.string      :question_answer
      t.timestamps
    end
  end
end
