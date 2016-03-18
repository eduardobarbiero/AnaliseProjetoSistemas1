require_relative "../maquina_cafe"
require "test/unit"
require 'rubygems'

class MaquinaCafeTest < Test::Unit::TestCase  
  def buttons_test
    machine = MaquinaCafe.new
    buttons = machine.set_buttons
    assert(buttons[0].function.equal? "Preto")
    assert(buttons[1].function.equal? "Creme")
    assert(buttons[2].function.equal? "Açucar")
    assert(buttons[4].function.equal? "Creme/Açucar")
  end
end