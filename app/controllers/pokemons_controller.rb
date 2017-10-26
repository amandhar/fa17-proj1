class PokemonsController < ApplicationController

	def capture
		pokeID = params[:id]
		poke = Pokemon.find(pokeID)
		poke.trainer = current_trainer
		poke.save
		redirect_to '/'
	end

	def damage
		puts "DAMAGE CALLED"
		pokeID = params[:id]
		poke = Pokemon.find(pokeID)
		poke.health = poke.health - 10
		if poke.health <= 0
			poke.destroy
		else
			poke.save
		end
		redirect_to show_trainer_path(:id => current_trainer.id)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		puts params
		@pokemon = Pokemon.create
		@pokemon.name = params[:pokemon][:name]
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer = current_trainer
		puts "CREATED Pokemon"

		if @pokemon.valid?
			@pokemon.save
			redirect_to show_trainer_path(:id => current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to newpokemon_path
		end
	end
end
