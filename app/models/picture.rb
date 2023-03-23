class Picture < ApplicationRecord

  validates :image, presence: true, unless: :was_attached?
  belongs_to :user
  belongs_to :birthday
  belongs_to :color_paper
end

