require_relative "caixaeletronico"
require "test/unit"

class CaixaEletronicoTest < Test::Unit::TestCase
  def test_saque
    assert_equal(true, CaixaEletronico::Operacoes.saque(:valor => 90))
  end
end