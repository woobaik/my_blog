class PortfolsController < ApplicationController

  def index
    @portfols = Portfol.all
  end

  def new
    @portfol = Portfol.new
  end

  def create
    @portfol = Portfol.new(portfol_params)

    respond_to do |format|
      if @portfol.save
        format.html { redirect_to portfols_path, notice: 'Your Portfolio item is now live'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
    @portfol = Portfol.find_by_id(params[:id])
  end

  def update
    @portfol = Portfol.find_by(id: params[:id])
    respond_to do |format|
      if @portfol.update(portfol_params)
        format.html { redirect_to portfols_path, notice: 'Your Portfolio item is updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfol = Portfol.find_by(id: params[:id])
  end

  private
  def portfol_params
    params.require(:portfol).permit(:title, :subtitle, :body, :main_image, :thumb_image)
  end
end
