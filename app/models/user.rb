class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # When a user signs up for an authentication they have to donfirm that they are a human being
  # :confirmable, 
  #Lock a user out, even given a number of times they tried to log in with a wrong username and password for example
  #:lockable, 
  # You can have the ability to time out a user.
  #:timeoutable and 
  # Integrate third party login, forexample facebook or some other
  #:omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
