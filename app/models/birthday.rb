class Birthday < ApplicationRecord
  validates :date, presence: true
  validates :celebrate_person_name, presence: true
  belongs_to :user
end
