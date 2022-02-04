class Paciente < ApplicationRecord
    validates :nombre, presence: true, length: { maximum: 15 }
    VALID_EMAIL_REGEX = /\A[\w+\.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: {with:VALID_EMAIL_REGEX}
end
