class User < ApplicationRecord
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    unless self.admin?
      self.nausea > self.happiness ? "sad" : "happy"
    end
  end
end
