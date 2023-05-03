class Picture < ApplicationRecord

  validates :image, presence: true, unless: :was_attached?
  
  belongs_to :user
  belongs_to :birthday
  belongs_to :color_paper
  
  has_one_attached :image

  # 画像が存在しなければテキストが必要となり、画像があればテキストは不要(画像のみ)
   def was_attached?   
    self.image.attached?
  end
end

