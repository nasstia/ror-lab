class User < ApplicationRecord
  validates :firstname, :lastname, :email, :password, :country, :city, :street, :homenumber, presence: true
  validates :homenumber, numericality: { only_integer: true }
  validates :firstname, :lastname, :country, :city, :street, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "invalid e-mail format" }
  validates :password, length: { in: 3..6 }
  validates :email, uniqueness: true
  validates :password, :email, confirmation: true
  validates :firstname, :lastname, :country, :city, :street, length: { minimum: 3 }
end
