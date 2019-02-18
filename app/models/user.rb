class User < ApplicationRecord

    has_secure_password
    validates :name,:username,:password, presence: true
    validates :username, uniqueness: true
    #attr_accessor :password,:confimpassword
    #attr_accessor   :errors
    
end
