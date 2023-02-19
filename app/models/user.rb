class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
   validates :nickname
   validates :nickname_kana
  end

  with_options allow_blank:true do
   validates :password, format:{ with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/}
   validates :password, format:{ with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
  end
        
  has_many :birthdays
  has_many :pictures
  has_many :color_papers
  has_many :comments
  
end

