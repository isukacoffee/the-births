class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :birthday
  belongs_to :color_paper
end
