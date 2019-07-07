class Swimmer < ApplicationRecord
	has_many :events
	has_secure_password
end
