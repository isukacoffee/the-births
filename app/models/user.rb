class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :nickname_kana, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, , format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }}
         
  has_many :birthdays
  has_many :pictures
  has_many :color_papers
  has_many :comments
  
end

