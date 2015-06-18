class DogsController < ApplicationController
  before_action :require_login, only: [:create, :edit, :update, :destroy]
  before_action :find_dog, only: [:edit, :update, :show]

  def index
    @dogs = Dog.all
  end

  def edit
  end

  def update
    @dog.assign_attributes(dog_params)
    if @dog.save
      redirect_to @dog
    else
      render :edit
    end
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

    def find_dog
      @dog = Dog.find(params[:id])
    end
end
