class PortfolsController < ApplicationController

  def index
    @portfols = Portfol.all
  end

  private
  def portfol_params
    params.require(:portfol).permit(:title, :subtitle, :body, :main_image, :thumb_image)
  end
end
