class ToysController < ApplicationController
  def create
    dog = Dog.find(params[:dog_id])
    toy = dog.toys.create(toy_params)
    redirect_to dog
  end

  def show
    @toy = Toy.find(params[:id])
    @dog = @toy.dog
  end
  private

    def toy_params
      params.require(:toy).permit(:name)
    end
end
