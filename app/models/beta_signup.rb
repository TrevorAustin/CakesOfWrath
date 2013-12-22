class BetaSignup < ActiveRecord::Base
  validates :email, presence: {message: "Please enter an email address"},
    uniqueness: {message: "That address is already signed up"}
end
