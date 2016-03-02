require_relative "jogodados"
require "test/unit"

class JogoDadosTest < Test::Unit::TestCase

  def test_infos    
    assert_equal(true, (Array.new([1,2,3,4,5,6,7]) == JogoDados::Dado.infos))   
  end
  
  def test_sorteio      
    assert_equal(true, (JogoDados::Sortear.sortear > 0))   
  end 
  
  def test_jogo
    assert_equal(true, JogoDados.jogar)     
  end
 
end