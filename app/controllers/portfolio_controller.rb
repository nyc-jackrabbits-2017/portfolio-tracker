class PortfolioController < ApplicationController

  def static
  end
  
  def show
    @user = User.find(params[:id])
    @portfolio = @user.generate_portfolio
    render json: @portfolio
  end

  def history
    @user = User.find(params[:id])
    @history = @user.generate_portfolio_history
    render json: @history
  end
end
