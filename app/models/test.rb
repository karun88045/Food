class Test < ApplicationRecord
  validates :email, presence: true 
  before_create :normalize_email

  def normalize_email
    self.email = email.downcase
  end

end
