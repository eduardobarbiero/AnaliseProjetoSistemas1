require_relative "jogodados"
require "test/unit"

class InfosTest < Test::Unit::TestCase
  def test_infos    
    assert_equal(true, (Array.new([1,2,3,4,5,6,7]) == JogoDados::Dado.infos))   
  end
end	

class SorteioTest < Test::Unit::TestCase
  def test_sorteio      
    assert_equal(true, (JogoDados::Sortear.sortear > 0))   
  end
end	

class JogoTest < Test::Unit::TestCase  
  def test_jogo
    assert_equal(true, JogoDados.jogar)     
  end
end
