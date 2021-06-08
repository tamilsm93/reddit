class Role < ApplicationRecord
  belongs_to :user
  has_many :user_roles

  has_many :users, through: :user_roles


end
