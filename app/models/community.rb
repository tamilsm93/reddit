class Community < ApplicationRecord

  validates :name, presence: true
   belongs_to :user

  # belongs_to :network

  has_many :comments, dependent: :destroy

  has_many :memberships

  has_many :users, through: :memberships
  
  has_many :posts


  # has_many :members, class_name: "User", foreign_key: "member_id"
end