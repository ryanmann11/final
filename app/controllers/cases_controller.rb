class CasesController < ApplicationController

	def index
		@cases = Case.all
	end

	def show
		@case = Case.find_by(id: params["id"])
		@roles = Role.where(movie_id: @movie.id)
		@actors = []
		@roles.each do |role|
			the_actor = Actor.find_by(id: role.actor_id)
			@actors << the_actor
		end
	end

end