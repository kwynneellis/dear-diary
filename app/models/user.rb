class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mood_logs
  has_many :moods, through: :mood_logs
  has_many :daily_logs

  validates :email, :password, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
end
