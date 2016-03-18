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
    assert(buttons[4].function.eql? "Devolver moeda")
  end

  def test_value_coffe
    machine = MaquinaCafe.new
    assert(machine.value.eql? 0.35)
  end

  def test_insert_cash
    machine = MaquinaCafe.new
    machine.cash = 2
    assert_equal(2, machine.cash)
  end
end