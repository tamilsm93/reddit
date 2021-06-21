class Community < ApplicationRecord

  validates :name, length: { maximum: 50, 
                  too_long: "must not greater then 50 " }
   belongs_to :user



  
  has_many :memberships
  
  has_many :comments, dependent: :destroy
  has_many :answers, through: :comments

  has_many :users, through: :memberships
  
  has_many :posts

  # scope: group_communities, -> { pluck(:id, :name).reverse.to_h }



  scope :user_comments, -> (posts) { includes({comments: :answers}).where(id: posts).map {|com| com.comments}.flatten }

 
  def self.selectItem
    pluck(:id, :name).reverse.to_h 
  end

end