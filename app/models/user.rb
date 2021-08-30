class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :submissions
  has_many :communities
  has_many :comments



  validates :username, uniqueness: true
  validates :username, presence: true

  acts_as_votable
  acts_as_voter


end
