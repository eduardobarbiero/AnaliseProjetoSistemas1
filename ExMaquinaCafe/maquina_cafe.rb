require "rubygems"

class MaquinaCafe

  attr_accessor :value

  def initialize
    @value = 0.35
  end

  def set_buttons
    buttons = []
    functions = ['Preto', 'Creme', 'Açucar', 'Creme/Açucar']

    for i in 0..4
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