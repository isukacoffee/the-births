class ColorPaper < ApplicationRecord
  validates :question, presence: true
  validates :question_answer, presence: true

  belongs_to :user  
  belongs_to :birthday
  has_many :pictures
  has_many :comments
end
