class Community < ApplicationRecord

  validates :name, length: { maximum: 50, 
                  too_long: "must not greater then 50 " }
   belongs_to :user

  # belongs_to :network

  has_many :comments, dependent: :destroy

  has_many :memberships

  has_many :answers, through: :comments

  has_many :users, through: :memberships
  
  has_many :posts

 
  def self.selectItem
    pluck(:id, :name).reverse.first(10).to_h 
  end

  def self.group_communities
    left_joins(:comments).group("communities.name").count
   
  end


  def self.user_comments(posts)
    includes({comments: :answers}).where(id: posts).map {|com| com.comments}.flatten 
  end


end