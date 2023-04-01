class ColorPaper < ApplicationRecord
  enum question:    {food: 0, animal: 1, color: 2}

  validates :question, presence: true
  validates :question_answer, presence: true

  belongs_to :user
  belongs_to :birthday
  has_many :pictures
  has_many :comments
end
