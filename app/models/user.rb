class User < ApplicationRecord
  validates :firstname, :lastname, :email, :password, :country, :city, :street, :homenumber, presence: true
  validates :homenumber, numericality: { only_integer: true }
  validates :firstname, :lastname, :country, :city, :street, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
