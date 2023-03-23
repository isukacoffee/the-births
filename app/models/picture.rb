class Picture < ApplicationRecord

  validates :image, presence: true
  belongs_to :user
  belongs_to :birthday
  belongs_to :color_paper
  has_one_attached :image

  # def was_attached?   画像が存在しなければテキストが必要となり、画像があればテキストは不要(画像のみ)
  #   self.image.attached?
  # end
end

