class PortfoliosController < ApplicationController
  def index
  	@portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
  	@portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :description, :content))
  	if @portfolio.save
  	  redirect_to root_path
    else
      render "new"
    end
  end

end
