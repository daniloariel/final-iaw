class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:medico, :paciente]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :medico
  end

  has_many :study

end
