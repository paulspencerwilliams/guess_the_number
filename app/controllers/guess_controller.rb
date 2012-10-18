class GuessController < ApplicationController
	def index
		if params[:guess]
			@try = :higher
		end


	end
end