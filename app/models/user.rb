require 'digest/sha1'

class User
	include Mongoid::Document
	
	field :name, :type => String
	field :email, :type => String
	index :email, :unique => true
	field :password, :type => String 

	validates_uniqueness_of :email
	
	has_many :matrix_objects
	has_many :workspaces
	has_and_belongs_to_many :projects
	
	def password=(val)
	  self.write_attribute(:password, User.hash_password(val))
	end
	
	def self.hash_password(pw)
    Digest::SHA1.hexdigest(pw + "salt")
	end
	
end
