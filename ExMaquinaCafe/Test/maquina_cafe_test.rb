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

  def test_back_cash
    machine = MaquinaCafe.new
    buttons = machine.set_buttons
    machine.cash = 0.50
    assert_equal(0.50, machine.action(buttons[4].function))
  end

  def test_order
    machine = MaquinaCafe.new
    buttons = machine.set_buttons
    machine.cash = 1.00
    assert_equal(0.65, machine.action(buttons[2].function))
  end
  
  # parte 2
  
  def test_insert_cents
    machine = MaquinaCafe.new

    machine.deposita(DezCentavos.new)
    assert_equal 0.10, machine.display

    machine.deposita(VinteCincoCentavos.new)
    assert_equal 0.35, machine.display

    assert_equal "cafe preto", machine.cafe_preto

    assert_equal 0, machine.display
  end

  def test_insert_cents_discont
    machine = MaquinaCafe.new
    machine.deposita(VinteCincoCentavos.new)
    machine.deposita(VinteCincoCentavos.new)
    assert_equal "cafe creme acucar", machine.cafe_creme_acucar
    assert_equal 0.15, machine.display
  end
end