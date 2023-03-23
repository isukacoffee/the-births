class Picture < ApplicationRecord

  validates :image, presence: true
  belongs_to :user
  belongs_to :birthday
  belongs_to :color_paper
  has_one_attached :image
end

