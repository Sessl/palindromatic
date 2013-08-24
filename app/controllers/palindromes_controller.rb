class PalindromesController < ApplicationController
	def index
		@palindromes=Palindrome.all
	end

	def new
		@palindrome=Palindrome.new
	end

	def create
		p=Palindrome.new(palindromes_params)
        if p.save
		 redirect_to palindromes_path
		else
			redirect_to new_palindrome_path
		end
	end

	private

	def palindromes_params
		params.require(:palindrome).permit(:name)
	end
end
