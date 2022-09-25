class HomeController < ApplicationController
  def index
  end

  def unity
    @carbon = Carbon.new
    @calc = Calc.new

    newest_carbon = Carbon.last
    @waste = (newest_carbon.refri * 0.5) + (newest_carbon.ac * 1) + (newest_carbon.people * 15)

    newest_calc = Calc.last
    @energy = ((newest_calc.eff.to_f / 100) * newest_calc.watts)

  end

  def new_carbon
    carbon = Carbon.new(carbon_params)
    carbon.save
    redirect_back(fallback_location: unity_path)
  end

  def new_calc
    calc = Calc.new(calc_params)
    calc.save
    redirect_back(fallback_location: unity_path)
  end

  private

    def carbon_params
      params.require(:carbon).permit(:people, :ac, :refri)
    end

    def calc_params
      params.require(:calc).permit(:waste, :eff, :watts, :price)
    end
end
