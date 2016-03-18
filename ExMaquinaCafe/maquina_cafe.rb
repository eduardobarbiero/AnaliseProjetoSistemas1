require "rubygems"

class MaquinaCafe

  attr_accessor :value
  attr_accessor :cash

  def initialize
    @value = 0.35
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

  class Button
    attr_accessor :function
  end



end