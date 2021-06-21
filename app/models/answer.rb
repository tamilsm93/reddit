class Answer < ApplicationRecord
  belongs_to :comment

  has_many :upvotes

  # belongs_to :community

end
