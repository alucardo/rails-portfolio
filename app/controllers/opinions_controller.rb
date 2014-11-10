class OpinionsController < ApplicationController 

  def index
    @opinions = Opinion.all
  end

  def show
  end

end