class Comment < ApplicationRecord

  validates  :sentence, presence: true
  belongs_to :user
end
