class Register < ApplicationRecord
  validates :nome, presence: true
  validates :email, presence: true
end
