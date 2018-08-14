class PortfolsController < ApplicationController
  before_action :set_portfol, only: [:show, :edit, :destroy, :update]
  layout "portfolio"

  def index
    @portfols = Portfol.all
  end

  def angular
    @portfols = Portfol.angular
  end

  def ruby_on_rails
    @portfols = Portfol.ruby_on_rails_portfols
  end

  def new
    @portfol = Portfol.new
    3.times { @portfol.technologies.build}
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

  def destroy
    @portfol = Portfol.find_by(id: params[:id])
    @portfol.destroy
    respond_to do |format|
      format.html { redirect_to portfols_url, notice: 'Your Item is removed'}
    end

  end

  private
   #need to update
  def set_portfol

  end

  def portfol_params
    params.require(:portfol).permit(:title,
                                    :subtitle,
                                    :body,
                                    :main_image,
                                    :thumb_image,
                                    technologies_attributes: [:name])
  end
end
