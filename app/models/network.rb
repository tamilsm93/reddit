class Network < ApplicationRecord

  validates :title, presence: true
  belongs_to :user

  has_many :communities
end
