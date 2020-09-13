class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all.order('rank ASC')
    @total = Currency.portfolio_total_value
  end

  def show
    @id = params[:id]
    @currency = Currency.find(@id)
    @total = Currency.portfolio_total_value
    @porcentage = @currency.calculate_porcentage(@total, @currency.portfolio_value).round(2)
  end

  def update
    quantity = 200
    @data = Currency.get_all_data(quantity)
    Currency.update_data(quantity)
    redirect_to currencies_path
  end

  def calculate
    id = params[:id]
    amount = params[:amount].to_f
    currency = Currency.find_by(id_CMC: id)
    @value = currency.check_value(amount)
    currency.update(:portfolio_value => @value, :portfolio_qty => amount)
    redirect_to currencies_path
  end


end
