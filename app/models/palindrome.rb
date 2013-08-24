class Palindrome < ActiveRecord::Base
	validate :is_palindrome
	def is_palindrome
		if self.name.reverse  != self.name
			self.errors.add :name,"This is not a palindrome!"
		end
	end

end
