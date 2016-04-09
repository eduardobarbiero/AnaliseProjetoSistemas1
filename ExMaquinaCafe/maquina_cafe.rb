require "rubygems"

class MaquinaCafe

  attr_accessor :value
  attr_accessor :cash

  def initialize
    @cash = 0
    @actions = set_buttons
    @value = 0.35
  end

  def action function
    result = @cash - @value
    raise 'Can not perform the operation' if result < 0
    if @actions[0].function.eql? function or @actions[1].function.eql? function or @actions[2].function.eql? function or @actions[3].function.eql? function
      result
    else
      @cash
    end
  end

  def set_buttons
    buttons = []
    functions = ['Preto', 'Creme', 'Açucar', 'Creme/Açucar', 'Devolver moeda']

    for i in 0..5
      button = Button.new
      button.function = functions[i]
      buttons << button
    end
    buttons
  end

  def deposita value
    @cash = @cash + value.valor
  end

  def display
    @cash
  end

  def cafe_preto
    discont 0.35
    "cafe preto"
  end

  def cafe_creme_acucar
    discont 0.35
    "cafe creme acucar"
  end

  def discont value
    @cash -= value
  end

  class Button
    attr_accessor :function
  end
end

class DezCentavos
  def valor
    0.10
  end
end

class VinteCincoCentavos
  def valor
    0.25
  end
end