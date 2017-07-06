class User < ApplicationRecord
    devise :database_authenticatable, 
		   :registerable, 
		   :recoverable, 
		   :rememberable, 
		   :trackable, 
		   :validatable
	has_many :tasks, dependent: :destroy
	has_many :projects, dependent: :destroy

	def to_s
		self.email
	end	   
end
