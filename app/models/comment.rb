class Comment < ApplicationRecord

  validates :description, presence: true
  belongs_to :community

  belongs_to :user
  
  has_many :answers

end
