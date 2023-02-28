class Birthday < ApplicationRecord
  validates :date, presence: true
  validates :celebrate_person_name, presence: true
end
