require "rubygems"

class MaquinaCafe

  attr_accessor :value
  attr_accessor :cash

  def initialize
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

  class Button
    attr_accessor :function
  end



end