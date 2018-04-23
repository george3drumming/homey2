class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    acts_as_messageable
    
    belongs_to :group
    
    def mailboxer_email(object)
    email
  end
end
