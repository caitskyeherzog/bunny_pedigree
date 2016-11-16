class User < ApplicationRecord

	# Validations
	validates :email, presence: true
	validates :password, presence: true, length: {minimum: 6}

	# email is a valid email
	# password is present
	# password is more than or equal to 6 characters

	# Methods
def validate?(pw)
	password == pw
end
	# authenticate

end
