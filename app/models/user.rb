class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :invitations, :class_name => self.to_s, :as => :invited_by

  devise  :database_authenticatable,
          :recoverable,
          :trackable,
          :confirmable,
          :lockable,
          :rememberable,
          :timeoutable,
          :validatable,
          :uid,
          :account_expireable,
          :invitable
end
