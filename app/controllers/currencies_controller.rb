class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all.order('rank ASC')
  end

  def show
    @id = params[:id]
    @currency = Currency.find(@id)
  end

  def update
    quantity = 200
    @data = Currency.get_all_data(quantity)
    Currency.update_data(quantity)
    redirect_to currencies_path
  end
end
