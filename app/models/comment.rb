class Comment < ApplicationRecord

  # validates :title, description, presence: true

  
  belongs_to :community

  belongs_to :user
  
  has_many :answers
 
end
