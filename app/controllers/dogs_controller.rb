class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def create
    dog = Dog.new(dog_params)
    if dog.save
      redirect_to dog
    else
      render text: "you suck"
    end
  end

  def new
    @dog = Dog.new
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

    def dog_params
      params.require(:dog).permit(:name, :breed)
    end
end
