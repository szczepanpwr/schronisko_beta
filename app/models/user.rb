class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: %i[user admin] # 0 is user, 1 is admin
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :user
  end
  def admin?
    role == "admin"
  end
end
