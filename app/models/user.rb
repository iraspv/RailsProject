class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end

def role_symbols
    if !self.role.nil? && self.role.length > 0
      return [self.role.split(" ").join("_").downcase.to_sym]
    else
      return :anonymous
    end
  end
