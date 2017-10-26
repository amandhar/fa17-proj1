class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    puts "SHOW TRAINER"
    @trainer = Trainer.find(params[:id])
  end

  def update

    @trainer = Trainer.find(params[:id])
    pokemon = Pokemon.find(params[:pid])
    pokemon.damage
  	puts "updating trainer"
  end

end
