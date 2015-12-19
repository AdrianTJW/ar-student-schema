require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
	validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
	validates :email, :uniqueness => {:case_sensitive => false}
	validates :age, :numericality => {:greater_than_or_equal_to => 5}
	
	def name
		"#{first_name} #{last_name}"		
	end

	def age
		now = Date.today
		age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
	end

	def phone
	 phone_num = phone.gsub(/[^\d]/, "")
	   if phone_num.length < 10
	       phone_num.errors[:phone] << "invalid phone number."
	   end
	end
end