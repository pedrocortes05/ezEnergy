class HomeController < ApplicationController
  def index
    @carbon = Carbon.new
    @waste = 5
  end

  def unity
  end

  def new_carbon
    carbon = Carbon.new(carbon_params)
    carbon.save
  end

  def new_calc
    calc = Calc.new(calc_params)
    calc.save
  end

  private

    def carbon_params
      params.require(:carbon).permit(:people, :ac, :refri)
    end

    def calc_params
      params.require(:calc).permit(:waste, :eff, :watts)
    end
end
