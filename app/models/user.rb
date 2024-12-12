class User < ApplicationRecord
    has_many :messages, dependent: :destroy
    validates :phone, length: { minimum: 9, maximum: 13 }, allow_nil: true
end
