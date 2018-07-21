class PortfolsController < ApplicationController

  def index
    @portfols = Portfol.all
  end
end
