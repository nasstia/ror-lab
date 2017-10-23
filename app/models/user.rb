class User < ApplicationRecord
  validates :firstname, :lastname, :email, :password, :country, :city, :street, :homenumber, presence: true
end
