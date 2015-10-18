class Profile < ActiveRecord::Base
	has_many :emails
	validates :ip, uniqueness: true
end
