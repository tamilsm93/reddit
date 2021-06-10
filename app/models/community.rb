class Community < ApplicationRecord

  validates :name, length: { maximum: 50, 
                  too_long: "must not greater then 50 " }
   belongs_to :user

  # belongs_to :network

  has_many :comments, dependent: :destroy

  has_many :memberships

  has_many :users, through: :memberships
  
  has_many :posts


  # has_many :members, class_name: "User", foreign_key: "member_id"
end