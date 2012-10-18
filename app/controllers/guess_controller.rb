class GuessController < ApplicationController
	def index

		if params[:guess]

			number = params[:guess].to_i

			if number < Game.first.number
				@try = :higher
			elsif number > Game.first.number
				@try = :lower
			end
			
		end


	end
end