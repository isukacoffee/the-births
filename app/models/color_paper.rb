class ColorPaper < ApplicationRecord
  enum question:    {food: 0, animal: 1, color: 2}

  validates :question, presence: true

  belongs_to :user
  belongs_to :birthday
  has_one_attached :picture
  has_many :comments

  # 画像が存在しなければテキストが必要となり、画像があればテキストは不要(画像のみ)
  #  def was_attached?   
  #   self.image.attached?
  # end
end
