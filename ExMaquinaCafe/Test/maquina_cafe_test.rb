require_relative "../maquina_cafe"
require 'rubygems'
require "test/unit"

class MaquinaCafeTest < Test::Unit::TestCase  
  def test_buttons
    machine = MaquinaCafe.new
    buttons = machine.set_buttons
    assert(buttons[0].function.eql? "Preto")
    assert(buttons[1].function.eql? "Creme")
    assert(buttons[2].function.eql? "Açucar")
    assert(buttons[3].function.eql? "Creme/Açucar")
  end

  def test_value_coffe
    machine = MaquinaCafe.new
    assert(machine.value.eql? 0.35)
  end
end