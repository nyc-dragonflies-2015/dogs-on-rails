class HollabackController < ApplicationController
  def do_hollering
    @name = params[:name]
  end
end
